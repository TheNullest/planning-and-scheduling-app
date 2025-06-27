import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';

part 'sync_log.g.dart';

@HiveType(typeId: 31) // Unique ID for Hive
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class SyncLogHiveModel extends SyncLogEntity with HiveObjectMixin {
  SyncLogHiveModel({
    required super.id,
    required super.deviceId,
    required super.userId,
    required super.syncLogId,
    super.isSynced = false,
    super.syncedAt,
  });

  factory SyncLogHiveModel.fromEntity(
    SyncLogEntity entity,
  ) =>
      SyncLogHiveModel(
        id: entity.id,
        deviceId: entity.deviceId,
        userId: entity.userId,
        syncLogId: entity.syncLogId,
        isSynced: entity.isSynced,
        syncedAt: entity.syncedAt,
      );

  SyncLogEntity toEntity() {
    return SyncLogEntity(
      id: id,
      deviceId: deviceId,
      userId: userId,
      syncLogId: syncLogId,
      isSynced: isSynced,
      syncedAt: syncedAt,
    );
  }

  @override
  SyncLogHiveModel copyWith({
    String? id,
    String? userId,
    String? deviceId,
    String? syncLogId,
    bool? isSynced,
    DateTime? syncedAt,
  }) {
    return SyncLogHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      deviceId: deviceId ?? this.deviceId,
      syncLogId: syncLogId ?? this.syncLogId,
      isSynced: isSynced ?? this.isSynced,
      syncedAt: syncedAt ?? this.syncedAt,
    );
  }
}
