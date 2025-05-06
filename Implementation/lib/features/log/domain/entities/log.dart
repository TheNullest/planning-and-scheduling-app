import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/hive/sync_action.dart';

/// Represents a log entry capturing changes within the application,
/// including device-specific actions, user activity, and synchronization states.
///
/// ▸ Primary Features:
/// - Tracks actions (e.g., create, update, delete) applied to specific entities.
/// - Records metadata about the user, device, and entity involved in the action.
/// - Supports synchronization state management across multiple devices.
///
/// ▸ Synchronization Behavior:
/// - The [isSynced] field is automatically set to `true` in Supabase
///   when the count of all related devices indicates that each device
///   has completed syncing the associated `SyncLog` entries.
/// - Ensures synchronization completeness across all devices before marking
///   a log entry as fully synced.
///
/// ▸ Data Storage:
/// - Persisted locally using Hive for offline use.
/// - Includes [isSynced] to track whether changes have been synchronized with other devices.
///
/// ▸ Usage:
/// - Create meaningful audit trails of user and device interactions.
/// - Facilitate synchronization workflows across distributed systems.
class LogEntity with EquatableMixin {
  /// Constructs a new log entry with the specified properties.
  ///
  /// Parameters:
  /// - [id]: Unique identifier for the log entry (e.g., UVMD or database ID).
  /// - [userId]: Identifier for the user performing the action.
  /// - [deviceId]: Identifier for the device that generated the log.
  /// - [entityId]: Identifier of the entity affected by the logged action.
  /// - [action]: Type of action performed (e.g., create, update, delete).
  /// - [data]: Additional data related to the action (e.g., changes or payload).
  /// - [recordedAt]: Timestamp indicating when the action was recorded.
  /// - [isSynced]: Indicates whether the log entry has been synchronized across all devices.
  ///
  /// - Note: The `isSynced` field is managed automatically in Supabase
  ///   and reflects synchronization completeness across all related devices.
  LogEntity({
    required this.id,
    required this.userId,
    required this.deviceId,
    required this.entityId,
    required this.action,
    required this.data,
    required this.recordedAt,
    this.isSynced = false,
  });

  /// Constructs an empty placeholder log entry for testing or default initialization.
  ///
  /// All fields are assigned generic values:
  /// - [id], [userId], [deviceId], [entityId]: Default strings.
  /// - [action]: Defaults to `SyncAction.create`.
  /// - [data]: Empty map.
  /// - [recordedAt]: Current timestamp.
  /// - [isSynced]: Defaulted to false.
  LogEntity.empty()
      : this(
          id: '1',
          userId: 'userId',
          deviceId: 'deviceId',
          entityId: 'entityId',
          action: SyncAction.create,
          data: const {},
          recordedAt: DateTime.now(),
          isSynced: false,
        );

  /// Unique identifier for the log entry.
  @HiveField(0)
  final String id;

  /// Identifier for the user who performed the action.
  @HiveField(1)
  final String userId;

  /// Identifier for the device that generated the log entry.
  @HiveField(2)
  final String deviceId;

  /// Identifier for the entity affected by the logged action.
  @HiveField(3)
  final String entityId;

  /// Type of action performed (e.g., create, update, delete).
  ///
  /// Defined in the [SyncAction] enumeration.
  @HiveField(4)
  final SyncAction action;

  /// Additional data related to the action (e.g., changes or payload).
  ///
  /// Represented as a key-value map.
  @HiveField(5)
  final DataMap data;

  /// Timestamp indicating when the action was recorded.
  ///
  /// Useful for chronological sorting and debugging.
  @HiveField(6)
  final DateTime recordedAt;

  /// Indicates whether the log entry has been synchronized across all devices.
  ///
  /// - `true`: The log has been successfully synced to all devices.
  /// - `false`: The log is pending synchronization.
  ///
  /// - Note: In Supabase, this field is automatically set to `true` once
  ///   the synchronization status of all related devices indicates completion.
  @HiveField(7)
  final bool isSynced;

  /// Creates a copy of the current log entry with modified fields.
  ///
  /// Parameters:
  /// - [id], [userId], [deviceId], [entityId], [action], [data], [recordedAt], [isSynced]:
  ///   Optional parameters to override existing values.
  ///
  /// Returns:
  /// - A new instance of [LogEntity] with updated values.
  LogEntity copyWith({
    String? id,
    String? userId,
    String? deviceId,
    String? entityId,
    SyncAction? action,
    DataMap? data,
    DateTime? recordedAt,
    bool? isSynced,
  }) {
    return LogEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      deviceId: deviceId ?? this.deviceId,
      entityId: entityId ?? this.entityId,
      action: action ?? this.action,
      data: data ?? this.data,
      recordedAt: recordedAt ?? this.recordedAt,
      isSynced: isSynced ?? this.isSynced,
    );
  }

  /// List of properties used for equality comparison.
  ///
  /// Ensures accurate comparison and hashing of log entries.
  @override
  List<Object?> get props => [
        id,
        userId,
        deviceId,
        entityId,
        action,
        data,
        recordedAt,
        isSynced,
      ];
}
