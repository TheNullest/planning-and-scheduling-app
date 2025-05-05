import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/data_mapper.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';

class ScheduleDefinitionDataMapper
    extends DataMapper<String, ScheduleConstraintHiveModel, ScheduleConstraintSupabaseModel> {
  @override
  String toEntityFromHive(ScheduleConstraintHiveModel model) => tryCatchSimple<String>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  String toEntityFromSupabase(
    ScheduleConstraintSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<String>(
        action: () {
          return String(
            id: model.id,
            description: model.description,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            userId: model.userId,
            taskId: model.taskId,
            scheduledTimes: List.from(model.scheduledTimes),
            startAt: model.startAt,
            endAt: model.endAt,
            weekDays: model.weekDays.map(WeekDay.fromName).toList(),
            monthDays: List.from(model.monthDays),
            enforceScheduleBounds: model.enforceScheduleBounds,
            exceptionDateIds: List.from(model.exceptionDateIds),
            exceptionTimeIds: List.from(model.exceptionTimeIds),
          );
        },
        failureType: FailureType.local,
      );

  @override
  ScheduleConstraintHiveModel toHiveModel(String entity) =>
      tryCatchSimple<ScheduleConstraintHiveModel>(
        action: () => ScheduleConstraintHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  ScheduleConstraintSupabaseModel toSupabaseModel(String entity) =>
      tryCatchSimple<ScheduleConstraintSupabaseModel>(
        action: () => ScheduleConstraintSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<ScheduleConstraintSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(ScheduleConstraintSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduleConstraintSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  ScheduleConstraintSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => ScheduleConstraintSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(ScheduleConstraintSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
