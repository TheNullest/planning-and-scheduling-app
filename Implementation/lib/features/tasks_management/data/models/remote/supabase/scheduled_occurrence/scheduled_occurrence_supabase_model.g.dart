// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_occurrence_supabase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ScheduledOccurrenceSupabaseModelToJson(
        ScheduledOccurrenceSupabaseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'task_id': instance.taskId,
      'created_at': instance.createdAt.toIso8601String(),
      'start_date_time': instance.startDateTime.toIso8601String(),
      'end_date_time': instance.endDateTime.toIso8601String(),
      'scheduler_id': instance.schedulerId,
      'scheduler_type': instance.schedulerType,
      'occurrence_status': instance.occurrenceStatus,
      'sequence_number': instance.sequenceNumber,
      'success_percentage': instance.successPercentage,
      'time_mode': instance.timeMode,
      'timezone': instance.timezone,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'exception_reason': instance.exceptionReason,
    };

_$ScheduledOccurrenceSupabaseModelImpl
    _$$ScheduledOccurrenceSupabaseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ScheduledOccurrenceSupabaseModelImpl(
          id: json['id'] as String,
          userId: json['user_id'] as String,
          taskId: json['task_id'] as String,
          createdAt: DateTime.parse(json['created_at'] as String),
          startDateTime: DateTime.parse(json['start_date_time'] as String),
          endDateTime: DateTime.parse(json['end_date_time'] as String),
          schedulerId: json['scheduler_id'] as String,
          schedulerType: json['scheduler_type'] as String,
          occurrenceStatus: json['occurrence_status'] as String,
          sequenceNumber: (json['sequence_number'] as num).toInt(),
          successPercentage: (json['success_percentage'] as num).toInt(),
          timeMode: json['time_mode'] as String,
          timezone: json['timezone'] as String,
          updatedAt: json['updated_at'] == null
              ? null
              : DateTime.parse(json['updated_at'] as String),
          exceptionReason: json['exception_reason'] as String?,
        );

Map<String, dynamic> _$$ScheduledOccurrenceSupabaseModelImplToJson(
        _$ScheduledOccurrenceSupabaseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'task_id': instance.taskId,
      'created_at': instance.createdAt.toIso8601String(),
      'start_date_time': instance.startDateTime.toIso8601String(),
      'end_date_time': instance.endDateTime.toIso8601String(),
      'scheduler_id': instance.schedulerId,
      'scheduler_type': instance.schedulerType,
      'occurrence_status': instance.occurrenceStatus,
      'sequence_number': instance.sequenceNumber,
      'success_percentage': instance.successPercentage,
      'time_mode': instance.timeMode,
      'timezone': instance.timezone,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'exception_reason': instance.exceptionReason,
    };
