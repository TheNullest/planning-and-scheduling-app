import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Represents a synchronization log entry for tracking device sync operations.
///
/// ▸ Primary Features:
/// - Captures the state and metadata of synchronization events between devices.
/// - Tracks whether synchronization has been completed and when it was completed.
///
/// ▸ Data Storage:
/// - Persisted locally using Hive for offline access.
/// - Includes fields such as `isSynced` and `syncedAt` to track sync status and timestamp.
///
/// ▸ Usage:
/// - Facilitates synchronization workflows across distributed systems.
/// - Allows tracking and auditing of sync operations for individual devices.
class SyncLogEntity with EquatableMixin {
  /// Constructs a new synchronization log entry with the specified properties.
  ///
  /// Parameters:
  /// - [id]: Unique identifier for the synchronization log entry (e.g., UUID or database ID).
  /// - [deviceId]: Identifier for the device associated with the synchronization operation.
  /// - [userId]: Identifier for the user owning the device group.
  /// - [syncLogId]: Identifier linking this sync log to related logs or data.
  /// - [isSynced]: Indicates whether the synchronization has been completed.
  /// - [syncedAt]: Timestamp indicating when the synchronization was completed.
  ///
  /// - Note: If [isSynced] is `true`, [syncedAt] should provide the completion time.
  const SyncLogEntity({
    required this.id,
    required this.deviceId,
    required this.userId,
    required this.syncLogId,
    this.isSynced = false,
    this.syncedAt,
  });

  /// Constructs an empty placeholder synchronization log entry.
  ///
  /// All fields are assigned generic values:
  /// - [id], [deviceId], [userId], [syncLogId]: Default strings.
  /// - [isSynced]: Defaults to false.
  /// - [syncedAt]: Null (indicating no sync completion).
  SyncLogEntity.empty()
      : this(
          id: '1',
          deviceId: 'deviceId',
          userId: 'userId',
          syncLogId: 'syncLogId',
        );

  /// Unique identifier for the synchronization log entry.
  @HiveField(0)
  final String id;

  /// Identifier for the device associated with the synchronization operation.
  @HiveField(1)
  final String deviceId;

  /// Identifier for the user owning the device group.
  @HiveField(2)
  final String userId;

  /// Identifier linking this sync log to related logs or data.
  @HiveField(3)
  final String syncLogId;

  /// Indicates whether the synchronization has been completed.
  ///
  /// - `true`: The synchronization has been completed successfully.
  /// - `false`: The synchronization is still pending.
  @HiveField(4)
  final bool isSynced;

  /// Timestamp indicating when the synchronization was completed.
  ///
  /// - If [isSynced] is `true`, this value provides the exact time of completion.
  /// - If [isSynced] is `false`, this value remains null.
  @HiveField(5)
  final DateTime? syncedAt;

  /// Creates a copy of the current synchronization log entry with modified fields.
  ///
  /// Parameters:
  /// - [id], [deviceId], [userId], [syncLogId], [isSynced], [syncedAt]: Optional parameters
  ///   to override existing values.
  ///
  /// Returns:
  /// - A new instance of [SyncLogEntity] with updated values.
  SyncLogEntity copyWith({
    String? id,
    String? userId,
    String? deviceId,
    String? syncLogId,
    bool? isSynced,
    DateTime? syncedAt,
  }) {
    return SyncLogEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      deviceId: deviceId ?? this.deviceId,
      syncLogId: syncLogId ?? this.syncLogId,
      isSynced: isSynced ?? this.isSynced,
      syncedAt: syncedAt ?? this.syncedAt,
    );
  }

  /// List of properties used for equality comparison.
  ///
  /// Ensures accurate comparison and hashing of synchronization log entries.
  @override
  List<Object?> get props => [
        id,
        deviceId,
        userId,
        syncLogId,
        isSynced,
        syncedAt,
      ];
}
