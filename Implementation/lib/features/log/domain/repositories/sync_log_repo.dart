import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/sync_log/sync_log.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';

/// Abstract interface for managing cross-device synchronization logs
/// exclusively in Supabase cloud storage.
///
/// ▸ Type [T] can be either:
///   - [SyncLogEntity]: Domain-layer representation of sync logs
///   - [SyncLogSupabaseModel]: Data-layer model matching Supabase table schema
///
/// ▸ Key Behaviors:
///   - SyncLogs that have isSynced marked as true will be automatically deleted after 14 days.
///   - The Log entity, representing changes in the app, will be marked as synced
///     only after all related devices in the ecosystem are synced.
///
/// ▸ All operations work directly with Supabase - no local persistence occurs.
abstract class SyncLogRepository<T> {
  /// Fetches unsynchronized logs for a user's device group from Supabase.
  ///
  /// Used to coordinate synchronization across multiple devices owned by the same user.
  ///
  /// Parameters:
  /// - [userId]: Supabase UUID authenticated user (enforces RLS policies).
  /// - [deviceId]: Primary coordinator device ID initiating the sync.
  ///
  /// Returns:
  /// - [EResultFuture<List<T>>]:
  ///   - Success: List of [SyncLogEntity] or [SyncLogSupabaseModel] instances.
  ///   - Failure: Network errors, RLS violations, or data format mismatches.
  EResultFuture<List<T>> getUnsyncedLogs({
    required String userId,
    required String deviceId,
  });

  /// Atomically marks sync completion for multiple devices in a single transaction.
  ///
  /// Ensures either all or none of the related devices get marked as synced. Once
  /// this operation is complete, the Log entity representing app changes will be
  /// marked as synced for the corresponding devices.
  ///
  /// Parameters:
  /// - [userId]: User owning the device group (RLS filter).
  /// - [deviceId]: Coordinator device ID triggering the completion.
  ///
  /// Returns:
  /// - [EResultFutureVoid]:
  ///   - Success: Empty result.
  ///   - Failure: Partial updates, transaction conflicts, or policy violations.
  EResultFutureVoid markDeviceAsSynced({
    required String userId,
    required String deviceId,
  });

  /// Bulk creates unsynced log entries in Supabase to notify linked devices of pending synchronization.
  ///
  /// These cloud-only records serve as notifications for other devices in the ecosystem to:
  /// 1. Detect new synchronization requirements.
  /// 2. Initiate sync workflows for their respective data subsets.
  /// 3. Track distributed synchronization state across devices.
  ///
  /// Synced logs will automatically be deleted after 14 days for the coordinating device
  /// to prevent unnecessary storage accumulation.
  ///
  /// Parameters:
  /// - [entities]: List of sync logs with:
  ///   - `isSynced` = false (default unsynced state).
  ///   - Target device IDs specified for notification routing.
  ///
  /// Returns:
  /// - [EResultFutureVoid]:
  ///   - Success: All notification logs created atomically.
  ///   - Failure: Partial creation would leave devices uninformed (treat as complete failure requiring retry).
  EResultFutureVoid createSyncLogs(List<T> entities);
}
