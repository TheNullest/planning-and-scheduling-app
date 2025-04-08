import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/enums/sync_action.dart';
import 'package:zamaan/core/utils/typedef.dart';

class LogEntity with EquatableMixin {
  LogEntity({
    required this.id,
    required this.userId,
    required this.deviceId,
    required this.entityId,
    required this.action,
    required this.data,
    required this.recordedAt,
  });

  LogEntity.empty()
      : this(
          id: '1',
          userId: 'userId',
          deviceId: 'deviceId',
          entityId: 'entityId',
          action: SyncAction.create,
          data: const {},
          recordedAt: DateTime.now(),
        );

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String userId;
  @HiveField(2)
  final String deviceId;
  @HiveField(3)
  final String entityId;
  @HiveField(4)
  final SyncAction action;
  @HiveField(5)
  final DataMap data;
  @HiveField(6)
  final DateTime recordedAt;

  LogEntity copyWith({
    String? id,
    String? userId,
    String? deviceId,
    String? entityId,
    SyncAction? action,
    DataMap? data,
    DateTime? recorededAt,
  }) {
    return LogEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      deviceId: deviceId ?? this.deviceId,
      entityId: entityId ?? this.entityId,
      action: action ?? this.action,
      data: data ?? this.data,
      recordedAt: recorededAt ?? recordedAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        deviceId,
        userId,
        entityId,
        action,
        data,
        recordedAt,
      ];
}
