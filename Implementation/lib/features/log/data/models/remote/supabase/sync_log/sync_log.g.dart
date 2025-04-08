// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SyncLogSupabaseModelToJson(
        SyncLogSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_id': instance.deviceId,
      'user_id': instance.userId,
      'sync_log_id': instance.syncLogId,
      'is_synced': instance.isSynced,
      'synced_at': instance.syncedAt?.toIso8601String(),
    };

_$SyncLogSupabaseModelImpl _$$SyncLogSupabaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SyncLogSupabaseModelImpl(
      id: json['id'] as String,
      deviceId: json['device_id'] as String,
      userId: json['user_id'] as String,
      syncLogId: json['sync_log_id'] as String,
      isSynced: json['is_synced'] as bool?,
      syncedAt: json['synced_at'] == null
          ? null
          : DateTime.parse(json['synced_at'] as String),
    );

Map<String, dynamic> _$$SyncLogSupabaseModelImplToJson(
        _$SyncLogSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_id': instance.deviceId,
      'user_id': instance.userId,
      'sync_log_id': instance.syncLogId,
      'is_synced': instance.isSynced,
      'synced_at': instance.syncedAt?.toIso8601String(),
    };
