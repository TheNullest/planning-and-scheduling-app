// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LogSupabaseModelToJson(LogSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'device_id': instance.deviceId,
      'entity_id': instance.entityId,
      'action': instance.action,
      'data': instance.data,
      'recorded_at': instance.recorededAt,
      'is_synced': instance.isSynced,
    };

_$LogSupabaseModelImpl _$$LogSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LogSupabaseModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      deviceId: json['device_id'] as String,
      entityId: json['entity_id'] as String,
      action: json['action'] as String,
      data: json['data'] as Map<String, dynamic>,
      recorededAt: json['recorded_at'] as String,
      isSynced: json['is_synced'] as bool,
    );

Map<String, dynamic> _$$LogSupabaseModelImplToJson(
        _$LogSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'device_id': instance.deviceId,
      'entity_id': instance.entityId,
      'action': instance.action,
      'data': instance.data,
      'recorded_at': instance.recorededAt,
      'is_synced': instance.isSynced,
    };
