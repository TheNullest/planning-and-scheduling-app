import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/local/hive/log.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/log/log.dart';
import 'package:zamaan/features/log/domain/entities/log.dart';

/// Central repository for managing application logs across local and cloud storage.
///
/// Handles two distinct log types:
/// 1. **General Logs**:
///    - Persisted in both local (Hive) and cloud (Supabase)
///    - Used for standard application logging
/// 2. **SyncLogs**:
///    - Cloud-only records (Supabase exclusively)
///    - Track synchronization states between devices
///
/// ▸ Type Parameter [T]:
///   - Determines storage layer and operational behavior:
///     - [LogEntity]: Domain representation for business logic
///     - [LogSupabaseModel]: Direct mapping to Supabase tables
///     - [LogHiveModel]: Local storage format for offline access
abstract class LogRepository<T> {
  /// Creates log entries in the appropriate storage layer.
  ///
  /// Behavior depends on type parameter [T]:
  /// - [LogSupabaseModel]: Cloud-only write (SyncLogs included)
  /// - [LogHiveModel]: Local-only write
  /// - [LogEntity]: Requires conversion to specific model first
  ///
  /// Parameters:
  /// - [logs]: Entries to create (type must match repository specialization)
  ///
  /// Returns:
  /// - [EResultFutureVoid]:
  ///   - Success: Logs persisted in target storage
  ///   - Failure: Storage-specific errors (network, DB constraints, etc.)
  ///
  /// Bulk writes logs to target storage with atomic guarantees.
  ///
  /// Implementation Requirements:
  /// - Local: Single transaction for all entries
  /// - Cloud: Batch insert with rollback on failure
  ///
  /// Example:
  /// ```dart
  /// // Cloud SyncLog creation
  /// createLogs([SyncLogSupabaseModel(...), SyncLogSupabaseModel(...)]); // Example for bulk creation
  ///
  /// // Local log creation
  /// createLogs([LogHiveModel(...), LogHiveModel(...)]); // Example for bulk creation
  /// ```
  EResultFutureVoid createLogs(List<T> logs);

  /// Unified log retrieval with storage-layer switching.
  ///
  /// Core Behavior Matrix:
  /// | Parameter    | Local Mode (`fromLocal: true`)        | Cloud Mode (`fromLocal: false`)   |
  /// |--------------|---------------------------------------|-----------------------------------|
  /// | [userId]     | Ignored (single-user assumption)       | Required (RLS enforcement)        |
  /// | [logIds]     | Not supported                          | Filters specific SyncLog entries  |
  /// | Return Type  | `List<LogHiveModel>`                     | `List<LogSupabaseModel>`            |
  ///
  /// Parameters:
  /// - [fromLocal]: Storage selection flag
  /// - [userId]: Mandatory for cloud mode, must match authenticated user
  /// - [logIds]: Cloud-only SyncLog filtering
  ///
  /// Returns:
  /// - [EResultFuture<List<T>>]:
  ///   - Success: Logs from selected storage layer
  ///   - Failure: Layer-specific errors (local DB read, network issues, RLS)
  ///
  /// Example:
  /// ```dart
  /// // Get local logs (type T = LogHiveModel)
  /// getLogs(fromLocal: true);
  ///
  /// // Get cloud SyncLogs (type T = LogSupabaseModel)
  /// getLogs(userId: "supa-user-123", logIds: ["sync1"], fromLocal: false);
  /// ```
  EResultFuture<List<T>> getLogs({
    required bool fromLocal,
    String? userId,
    List<String>? logIds,
  });

  /// Time-based log retrieval with cross-layer consistency.
  ///
  /// Guarantees:
  /// - Local: Precise device clock time filtering
  /// - Cloud: UTC timestamp comparisons
  ///
  /// Parameters:
  /// - [fromDate]: Temporal filter anchor point
  /// - [userId]: Required for cloud mode only
  ///
  /// Returns:
  /// - [EResultFuture<List<T>>]:
  ///   - Success: Chronologically filtered logs
  ///   - Failure: Invalid date range, layer-specific errors
  ///
  /// Implementation Note:
  /// - Cloud mode converts [fromDate] to UTC for Supabase queries
  EResultFuture<List<T>> getSinceDate({
    required DateTime fromDate,
    String? userId,
  });
}
