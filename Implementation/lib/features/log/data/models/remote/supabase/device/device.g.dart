// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$DeviceSupabaseModelToJson(
        DeviceSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'os': instance.os,
      'os_version': instance.osVersion,
      'app_version': instance.appVersion,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'registered_at': instance.registeredAt.toIso8601String(),
      'last_active': instance.lastActive.toIso8601String(),
    };

_$DeviceSupbaseModelImpl _$$DeviceSupbaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceSupbaseModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      os: json['os'] as String,
      osVersion: json['os_version'] as String,
      appVersion: json['app_version'] as String,
      manufacturer: json['manufacturer'] as String,
      model: json['model'] as String,
      registeredAt: DateTime.parse(json['registered_at'] as String),
      lastActive: DateTime.parse(json['last_active'] as String),
    );

Map<String, dynamic> _$$DeviceSupbaseModelImplToJson(
        _$DeviceSupbaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'os': instance.os,
      'os_version': instance.osVersion,
      'app_version': instance.appVersion,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'registered_at': instance.registeredAt.toIso8601String(),
      'last_active': instance.lastActive.toIso8601String(),
    };
