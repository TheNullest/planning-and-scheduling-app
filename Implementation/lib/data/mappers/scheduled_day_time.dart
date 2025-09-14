import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_time_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day_time/scheduled_day_time_supabase_model.dart';

class ScheduledDayTimeDataMapperImpl extends ScheduledDayTimeDataMapper {
  @override
  ScheduledDayTimeEntity toEntityFromHive(ScheduledDayTimeHiveModel model) {
    try {
      return ScheduledDayTimeEntity(
          id: model.id,
          userId: model.userId,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          description: model.description,
          taskId: model.taskId,
          dayType: model.dayType,
          dayLabel: model.dayLabel,
          repeatCount: model.repeatCount,
          startTime: model.startTime,
          endTime: model.endTime,
          timeMode: model.timeMode);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledDayTimeEntity toEntityFromSupabase(
    ScheduledDayTimeSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return ScheduledDayTimeEntity(
          id: model.id,
          userId: model.userId,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          description: model.description,
          taskId: model.taskId,
          dayType: DayType.fromName(model.dayType),
          dayLabel: model.dayLabel,
          repeatCount: model.repeatCount,
          startTime: model.startTime,
          endTime: model.endTime,
          timeMode: ScheduledTimeMode.fromName(model.timeMode));
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledDayTimeHiveModel toHiveModel(ScheduledDayTimeEntity entity) {
    try {
      return ScheduledDayTimeHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledDayTimeSupabaseModel toSupabaseModel(ScheduledDayTimeEntity entity) {
    try {
      return ScheduledDayTimeSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<ScheduledDayTimeSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(ScheduledDayTimeSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledDayTimeSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledDayTimeSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return ScheduledDayTimeSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(ScheduledDayTimeSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
