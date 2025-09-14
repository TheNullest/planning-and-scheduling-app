import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/schedule_constraints.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';

class ScheduleConstraintDataMapperImpl extends ScheduleConstraintsDataMapper {
  @override
  ScheduleConstraintsEntity toEntityFromHive(ScheduleConstraintsHiveModel model) {
    try {
      return ScheduleConstraintsEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          taskId: model.taskId,
          startDate: model.startDate,
          endDate: model.endDate,
          exceptionMonthDays: model.exceptionMonthDays,
          exceptionWeekDays: model.exceptionWeekDays,
          enforceScheduleBounds: model.enforceScheduleBounds,
          exceptionDates: List.from(model.exceptionDates));
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduleConstraintsEntity toEntityFromSupabase(
    ScheduleConstraintsSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return ScheduleConstraintsEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        taskId: model.taskId,
        startDate: model.startDate,
        endDate: model.endDate,
        exceptionMonthDays: model.exceptionMonthDays,
        exceptionWeekDays: model.exceptionWeekDays.map(WeekDay.fromName).toList(),
        enforceScheduleBounds: model.enforceScheduleBounds,
        exceptionDates: List.from(model.exceptionDates),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduleConstraintsHiveModel toHiveModel(ScheduleConstraintsEntity entity) {
    try {
      return ScheduleConstraintsHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduleConstraintsSupabaseModel toSupabaseModel(ScheduleConstraintsEntity entity) {
    try {
      return ScheduleConstraintsSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<ScheduleConstraintsSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(ScheduleConstraintsSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduleConstraintsSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  ScheduleConstraintsSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return ScheduleConstraintsSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(ScheduleConstraintsSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
