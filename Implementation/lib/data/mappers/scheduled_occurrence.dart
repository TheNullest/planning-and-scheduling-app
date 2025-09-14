import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/scheduled_occurrence.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_occurrence_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_occurrence/scheduled_occurrence_supabase_model.dart';

class ScheduledOccurrenceDataMapperImpl extends ScheduledOccurrenceDataMapper {
  @override
  ScheduledOccurrenceEntity toEntityFromHive(ScheduledOccurrenceHiveModel model) {
    try {
      return ScheduledOccurrenceEntity(
        id: model.id,
        userId: model.userId,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        taskId: model.taskId,
        description: model.description,
        schedulerId: model.schedulerId,
        schedulerType: model.schedulerType,
        endDateTime: model.endDateTime,
        startDateTime: model.startDateTime,
        occurrenceStatus: model.occurrenceStatus,
        sequenceNumber: model.sequenceNumber,
        timeMode: model.timeMode,
        successPercentage: model.successPercentage,
        timezone: model.timezone,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledOccurrenceEntity toEntityFromSupabase(
    ScheduledOccurrenceSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return ScheduledOccurrenceEntity(
        id: model.id,
        userId: model.userId,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        taskId: model.taskId,
        description: model.exceptionReason,
        schedulerId: model.schedulerId,
        schedulerType: ScheduleType.fromName(model.schedulerType),
        endDateTime: model.endDateTime,
        startDateTime: model.startDateTime,
        occurrenceStatus: OccurrenceStatus.fromName(model.occurrenceStatus),
        sequenceNumber: model.sequenceNumber,
        successPercentage: model.successPercentage,
        timeMode: ScheduledTimeMode.fromName(model.timeMode),
        timezone: model.timezone,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledOccurrenceHiveModel toHiveModel(ScheduledOccurrenceEntity entity) {
    try {
      return ScheduledOccurrenceHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledOccurrenceSupabaseModel toSupabaseModel(ScheduledOccurrenceEntity entity) {
    try {
      return ScheduledOccurrenceSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<ScheduledOccurrenceSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(ScheduledOccurrenceSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledOccurrenceSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledOccurrenceSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return ScheduledOccurrenceSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(ScheduledOccurrenceSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
