import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SyncLogEntity with EquatableMixin {
  const SyncLogEntity({
    required this.id,
    required this.deviceId,
    required this.userId,
    required this.syncLogId,
    this.isSynced = false,
    this.syncedAt,
  });
  SyncLogEntity.empty()
      : this(
          id: '1',
          deviceId: 'deviceId',
          userId: 'userId',
          syncLogId: 'syncLogId',
        );
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String deviceId;
  @HiveField(2)
  final String userId;
  @HiveField(3)
  final String syncLogId;
  @HiveField(4)
  final bool isSynced;
  @HiveField(5)
  final DateTime? syncedAt;

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
