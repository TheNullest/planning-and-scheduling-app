import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/schedule_constraints.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';

class ScheduleConstraintDataMapperImpl extends ScheduleConstraintDataMapper {
  @override
  ScheduleConstraintEntity toEntityFromHive(ScheduleConstraintHiveModel model) {
    try {
      return ScheduleConstraintEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        taskId: model.taskId,
        startAt: model.startAt,
        endAt: model.endAt,
        exceptionMonthDays: model.exceptionMonthDays,
        exceptionWeekDays: model.exceptionWeekDays,
        enforceScheduleBounds: model.enforceScheduleBounds,
        exceptionDateIds: List.from(model.exceptionDateIds),
        exceptionTimeIds: List.from(model.exceptionTimeIds),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduleConstraintEntity toEntityFromSupabase(
    ScheduleConstraintSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return ScheduleConstraintEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        taskId: model.taskId,
        startAt: model.startAt,
        endAt: model.endAt,
        exceptionMonthDays: model.exceptionMonthDays,
        exceptionWeekDays: model.exceptionWeekDays.map(WeekDay.fromName).toList(),
        enforceScheduleBounds: model.enforceScheduleBounds,
        exceptionDateIds: List.from(model.exceptionDateIds),
        exceptionTimeIds: List.from(model.exceptionTimeIds),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduleConstraintHiveModel toHiveModel(ScheduleConstraintEntity entity) {
    try {
      return ScheduleConstraintHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduleConstraintSupabaseModel toSupabaseModel(ScheduleConstraintEntity entity) {
    try {
      return ScheduleConstraintSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<ScheduleConstraintSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(ScheduleConstraintSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduleConstraintSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduleConstraintSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return ScheduleConstraintSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(ScheduleConstraintSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
