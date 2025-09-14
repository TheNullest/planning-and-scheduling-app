import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/scheduled_interval.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/enums/hive/interval_unit.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval/scheduled_interval_supabase_model.dart';

class ScheduledIntervalDataMapperImpl extends ScheduledIntervalDataMapper {
  @override
  ScheduledIntervalEntity toEntityFromHive(ScheduledIntervalHiveModel model) {
    try {
      return ScheduledIntervalEntity(
        id: model.id,
        userId: model.userId,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        description: model.description,
        startDate: model.startDate,
        consecutiveOccurrences: model.consecutiveOccurrences,
        taskId: model.taskId,
        intervalUnit: model.intervalUnit,
        intervalValue: model.intervalValue,
        scheduledTimeIds: List.from(model.scheduledTimeIds),
        repeatCount: model.repeatCount,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledIntervalEntity toEntityFromSupabase(
    ScheduledIntervalSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return ScheduledIntervalEntity(
        id: model.id,
        userId: model.userId,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        description: model.description,
        startDate: model.startTime,
        consecutiveOccurrences: model.consecutiveOccurrences,
        taskId: model.taskId,
        intervalUnit: IntervalUnit.fromName(model.intervalUnit),
        intervalValue: model.intervalValue,
        scheduledTimeIds: List.from(model.scheduledTimeIds),
        repeatCount: model.repeatCount,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledIntervalHiveModel toHiveModel(ScheduledIntervalEntity entity) {
    try {
      return ScheduledIntervalHiveModel(
        id: entity.id,
        userId: entity.userId,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        description: entity.description,
        startDate: entity.startDate,
        consecutiveOccurrences: entity.consecutiveOccurrences,
        taskId: entity.taskId,
        intervalUnit: entity.intervalUnit,
        intervalValue: entity.intervalValue,
        scheduledTimeIds: List.from(entity.scheduledTimeIds),
        repeatCount: entity.repeatCount,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledIntervalSupabaseModel toSupabaseModel(ScheduledIntervalEntity entity) {
    try {
      return ScheduledIntervalSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<ScheduledIntervalSupabaseModel> fromJsonList(
    List<Map<String, dynamic>> jsonList,
  ) {
    try {
      return jsonList.map(ScheduledIntervalSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledIntervalSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledIntervalSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return ScheduledIntervalSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(ScheduledIntervalSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
