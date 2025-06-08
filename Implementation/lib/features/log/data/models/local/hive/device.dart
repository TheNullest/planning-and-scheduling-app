import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

import 'package:zamaan/domain/enums/hive/os.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';

part 'device.g.dart';

@HiveType(typeId: 32) // Unique ID for Hive
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class DeviceHiveModel extends DeviceEntity with HiveObjectMixin {
  DeviceHiveModel({
    required super.id,
    required super.userId,
    required super.os,
    required super.osVersion,
    required super.appVersion,
    required super.manufacturer,
    required super.model,
    required super.registeredAt,
    required super.lastActive,
  });

  factory DeviceHiveModel.fromEntity(DeviceEntity entity) => DeviceHiveModel(
        id: entity.id,
        userId: entity.userId,
        os: entity.os,
        osVersion: entity.osVersion,
        appVersion: entity.appVersion,
        manufacturer: entity.manufacturer,
        model: entity.model,
        registeredAt: entity.registeredAt,
        lastActive: entity.lastActive,
      );

  DeviceEntity toEntity() {
    return DeviceEntity(
      id: id,
      userId: userId,
      os: os,
      osVersion: osVersion,
      appVersion: appVersion,
      manufacturer: manufacturer,
      model: model,
      registeredAt: registeredAt,
      lastActive: lastActive,
    );
  }

  @override
  DeviceHiveModel copyWith({
    String? id,
    String? userId,
    OS? os,
    String? osVersion,
    String? appVersion,
    String? manufacturer,
    String? model,
    DateTime? registeredAt,
    DateTime? lastActive,
  }) {
    return DeviceHiveModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      os: os ?? this.os,
      osVersion: osVersion ?? this.osVersion,
      appVersion: appVersion ?? this.appVersion,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      registeredAt: registeredAt ?? this.registeredAt,
      lastActive: lastActive ?? this.lastActive,
    );
  }
}
