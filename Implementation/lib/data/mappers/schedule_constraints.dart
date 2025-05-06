import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/schedule_constraints.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_constraint/schedule_constraint_supabase_model.dart';

class ScheduleConstraintDataMapperImpl extends ScheduleConstraintDataMapper {
  @override
  ScheduleConstraintEntity toEntityFromHive(ScheduleConstraintHiveModel model) =>
      tryCatchSimple<ScheduleConstraintEntity>(
        action: () => ScheduleConstraintEntity(
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
        ),
        failureType: FailureType.local,
      );

  @override
  ScheduleConstraintEntity toEntityFromSupabase(
    ScheduleConstraintSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<ScheduleConstraintEntity>(
        action: () => ScheduleConstraintEntity(
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
        ),
        failureType: FailureType.local,
      );

  @override
  ScheduleConstraintHiveModel toHiveModel(ScheduleConstraintEntity entity) =>
      tryCatchSimple<ScheduleConstraintHiveModel>(
        action: () => ScheduleConstraintHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  ScheduleConstraintSupabaseModel toSupabaseModel(ScheduleConstraintEntity entity) =>
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
