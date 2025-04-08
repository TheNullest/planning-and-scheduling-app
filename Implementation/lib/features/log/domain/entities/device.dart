import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/enums/os.dart';

class DeviceEntity with EquatableMixin {
  DeviceEntity({
    required this.id,
    required this.userId,
    required this.os,
    required this.osVersion,
    required this.appVersion,
    required this.manufacturer,
    required this.model,
    required this.registeredAt,
    required this.lastActive,
  });

  DeviceEntity.empty()
      : this(
          id: '1',
          userId: 'userId',
          os: OS.android,
          osVersion: 'osVersion',
          appVersion: 'appVersion',
          manufacturer: 'manufacturer',
          model: 'model',
          registeredAt: DateTime.now(),
          lastActive: DateTime.now(),
        );

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String userId;
  @HiveField(2)
  final OS os;
  @HiveField(3)
  final String osVersion;
  @HiveField(4)
  final String appVersion;
  @HiveField(5)
  final String manufacturer;
  @HiveField(6)
  final String model;
  @HiveField(7)
  final DateTime registeredAt;
  @HiveField(8)
  final DateTime lastActive;

  @override
  String toString() {
    return '''
Device{ id: $id, user id: $userId,
        os: $os, osVersion: $osVersion, appVersion: $appVersion, manufacturer: $manufacturer,
        model: $model, createdAt: $registeredAt, lastActive: $lastActive}''';
  }

  DeviceEntity copyWith({
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
    return DeviceEntity(
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

  @override
  List<Object?> get props => [
        id,
        userId,
        os,
        os,
        osVersion,
        appVersion,
        manufacturer,
        model,
        registeredAt,
        lastActive,
      ];
}
