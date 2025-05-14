import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/scheduled_day.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day/scheduled_day_supabase_model.dart';

class ScheduledDayDataMapperImpl extends ScheduledDayDataMapper {
  @override
  ScheduledDayEntity toEntityFromHive(ScheduledDayHiveModel model) {
    try {
      return ScheduledDayEntity(
        id: model.id,
        userId: model.userId,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        description: model.description,
        scheduleConstraintId: model.scheduleConstraintId,
        dayType: model.dayType,
        dayValue: model.dayValue,
        canRepeat: model.canRepeat,
        scheduledTimeIds: List.from(model.scheduledTimeIds),
        enforceScheduleBounds: model.enforceScheduleBounds,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledDayEntity toEntityFromSupabase(
    ScheduledDaySupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return ScheduledDayEntity(
        id: model.id,
        userId: model.userId,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        description: model.description,
        scheduleConstraintId: model.scheduleConstraintId,
        dayType: DayType.fromName(model.dayType),
        dayValue: model.dayValue,
        canRepeat: model.canRepeat,
        scheduledTimeIds: List.from(model.scheduledTimeIds),
        enforceScheduleBounds: model.enforceScheduleBounds,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledDayHiveModel toHiveModel(ScheduledDayEntity entity) {
    try {
      return ScheduledDayHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledDaySupabaseModel toSupabaseModel(ScheduledDayEntity entity) {
    try {
      return ScheduledDaySupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<ScheduledDaySupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(ScheduledDaySupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledDaySupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduledDaySupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return ScheduledDaySupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(ScheduledDaySupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
