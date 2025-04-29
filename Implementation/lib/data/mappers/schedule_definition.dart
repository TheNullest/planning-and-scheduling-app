import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_definition_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_definition/schedule_definition_supabase_model.dart';

class ScheduleDefinitionMapper extends Mapper<ScheduleDefinitionEntity, ScheduleDefinitionHiveModel,
    ScheduleDefinitionSupabaseModel> {
  @override
  ScheduleDefinitionEntity toEntityFromHive(ScheduleDefinitionHiveModel model) =>
      tryCatchSimple<ScheduleDefinitionEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  ScheduleDefinitionEntity toEntityFromSupabase(
    ScheduleDefinitionSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<ScheduleDefinitionEntity>(
        action: () {
          return ScheduleDefinitionEntity(
            id: model.id,
            description: model.description,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            userId: model.userId,
            taskId: model.taskId,
            repetitionType: RepetitionType.fromName(model.repetitionType),
            repeatCount: model.repeatCount,
            scheduledTimeIds: model.scheduledTimes,
            startAt: model.startAt,
            endAt: model.endAt,
            weekDays: model.weekDays.map(WeekDay.fromName).toList(),
            monthDays: model.monthDays,
            scheduledDayDefinitionIds: model.scheduledDayDefinitions,
            scheduledIntervalDefinitionIds: model.scheduledIntervalDefinitions,
            enforceScheduleBounds: model.enforceScheduleBounds,
          );
        },
        failureType: FailureType.local,
      );

  @override
  ScheduleDefinitionHiveModel toHiveModel(ScheduleDefinitionEntity entity) =>
      tryCatchSimple<ScheduleDefinitionHiveModel>(
        action: () => ScheduleDefinitionHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  ScheduleDefinitionSupabaseModel toSupabaseModel(ScheduleDefinitionEntity entity) =>
      tryCatchSimple<ScheduleDefinitionSupabaseModel>(
        action: () => ScheduleDefinitionSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<ScheduleDefinitionSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(ScheduleDefinitionSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduleDefinitionSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  ScheduleDefinitionSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => ScheduleDefinitionSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(ScheduleDefinitionSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
