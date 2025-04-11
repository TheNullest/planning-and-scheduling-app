import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/local/hive/log.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/log/log.dart';
import 'package:zamaan/features/log/domain/entities/log.dart';

/// Central repository for managing application logs across both local and cloud storage.
///
/// This repository implements advanced error handling, model validation, and atomic
/// transaction capabilities to ensure data integrity when interacting with different
/// storage layers.
///
/// It handles two distinct log types:
///
/// 1. **General Logs:**
///    - Persisted in both local (Hive) and cloud (Supabase) storage.
///    - Used for standard application logging.
///
/// 2. **SyncLogs:**
///    - Cloud-only records (Supabase exclusively).
///    - Used to track synchronization states between devices.
///
/// ▸ **Type Parameter [T]:**
///   - Determines the target storage and required conversion behavior:
///     - **[LogEntity]**: Domain representation for business logic (requires conversion to a storage model).
///     - **[LogSupabaseModel]**: Direct mapping to Supabase table structure for cloud persistence (includes SyncLogs).
///     - **[LogHiveModel]**: Local storage format using Hive for offline access.
abstract interface class LogRepository<T> {
  /// Creates log entries in the appropriate storage layer after validating the input models.
  ///
  /// **Behavior depends on the type parameter [T]:**
  /// - **[LogSupabaseModel]**: Executes a cloud-only write (including SyncLogs).
  /// - **[LogHiveModel]**: Executes a local-only write.
  /// - **[LogEntity]**: Requires conversion to the corresponding storage model before persistence.
  ///
  /// **Parameters:**
  /// - **[logs]**: A list of log entries to create. The type of [logs] must match the repository's specialization.
  ///
  /// **Returns:**
  /// - **[EResultFutureVoid]**:
  ///   - **Success:** Logs are successfully persisted in the target storage.
  ///   - **Failure:** Returns storage-specific errors (e.g., network issues, database constraints).
  ///
  /// **Implementation Guarantees:**
  /// - **Local writes:** Commits all entries within a single transaction to ensure atomicity.
  /// - **Cloud writes:** Performs a batch insert with automatic rollback on failure.
  ///
  /// **Example:**
  /// ```dart
  /// // Creating SyncLogs in the cloud
  /// createLogs([SyncLogSupabaseModel(...), SyncLogSupabaseModel(...)]);
  ///
  /// // Creating logs locally using Hive
  /// createLogs([LogHiveModel(...), LogHiveModel(...)]);
  /// ```
  EResultFutureVoid createLogs(List<T> logs);

  /// Retrieves logs from the designated storage layer, switching between local and cloud modes.
  ///
  /// **Core Behavior Matrix:**
  /// | Parameter      | Local Mode (`fromLocal: true`)                | Cloud Mode (`fromLocal: false`)               |
  /// |----------------|-----------------------------------------------|-----------------------------------------------|
  /// | **[logIds]**   | Ignored – filtering not supported locally     | Used to filter specific SyncLog entries       |
  /// | **Return**     | List of [LogHiveModel] for local persistence   | List of [LogSupabaseModel] for cloud persistence|
  ///
  /// **Parameters:**
  /// - **[fromLocal]**: Flag indicating which storage layer to query.
  ///   - `true`: Query local storage (Hive).
  ///   - `false`: Query remote storage (Supabase) (default).
  /// - **[logIds]**: (Optional) For cloud mode only; used to filter specific SyncLog records.
  ///
  /// **Returns:**
  /// - **[EResultFuture<List<T>>]**:
  ///   - **Success:** A list of logs retrieved from the appropriate storage layer.
  ///   - **Failure:** Returns errors such as local DB access issues or network-related failures.
  ///
  /// **Example:**
  /// ```dart
  /// // Retrieve logs from local storage (type T = LogHiveModel)
  /// getLogs(fromLocal: true);
  ///
  /// // Retrieve cloud-based SyncLogs (type T = LogSupabaseModel) with filtering
  /// getLogs(fromLocal: false, logIds: ["sync1", "sync2"]);
  /// ```
  EResultFuture<List<T>> getLogs({
    bool fromLocal = false,
    List<String>? logIds,
  });

  /// Retrieves logs based on a starting date while ensuring cross-layer consistency.
  ///
  /// **Guarantees:**
  /// - **Local:** Precisely filters logs using the device’s local clock.
  /// - **Cloud:** Performs UTC timestamp comparisons to maintain consistency.
  ///
  /// **Parameters:**
  /// - **[fromDate]:** The starting point for filtering logs by time.
  /// - **[fromLocal]:** Determines the target storage layer:
  ///   - `true`: Targets local storage (e.g., Hive) and uses the device's current timezone.
  ///   - `false`: Targets cloud storage (e.g., Supabase) and converts [fromDate] to UTC internally.
  ///
  /// **Returns:**
  /// - **[EResultFuture<List<T>>]**:
  ///   - **Success:** A chronologically ordered list of logs that match the time filter.
  ///   - **Failure:** Returns an error if there is an invalid date range or storage-specific issue.
  ///
  /// **Implementation Note:**
  /// - In cloud mode, [fromDate] is automatically converted to UTC to ensure consistency with Supabase queries.
  EResultFuture<List<T>> getSinceDate({
    required DateTime fromDate,
    bool fromLocal = false,
  });
}
