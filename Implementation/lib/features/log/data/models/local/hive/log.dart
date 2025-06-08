import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

import 'package:zamaan/domain/enums/hive/sync_action.dart';
import 'package:zamaan/features/log/domain/entities/log.dart';

part 'log.g.dart';

@HiveType(typeId: 33) // Unique ID for Hive
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class LogHiveModel extends LogEntity with HiveObjectMixin {
  LogHiveModel({
    required super.id,
    required super.userId,
    required super.deviceId,
    required super.entityId,
    required super.action,
    required super.data,
    required super.recordedAt,
    super.isSynced = false,
  });

  factory LogHiveModel.fromEntity(LogEntity entity) => LogHiveModel(
        id: entity.id,
        userId: entity.userId,
        deviceId: entity.deviceId,
        entityId: entity.entityId,
        action: entity.action,
        data: entity.data,
        recordedAt: entity.recordedAt,
        isSynced: entity.isSynced,
      );
  LogEntity toEntity() {
    return LogEntity(
      id: id,
      userId: userId,
      deviceId: deviceId,
      entityId: entityId,
      action: action,
      data: data,
      recordedAt: recordedAt,
      isSynced: isSynced,
    );
  }

  @override
  LogHiveModel copyWith({
    String? id,
    String? userId,
    String? deviceId,
    String? entityId,
    SyncAction? action,
    DataMap? data,
    DateTime? recordedAt,
    bool? isSynced,
  }) {
    return LogHiveModel(
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
}
