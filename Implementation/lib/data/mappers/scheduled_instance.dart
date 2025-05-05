import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/data_mapper.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_instance_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_instance/scheduled_instance_supabase_model.dart';

class ScheduledInstanceDataMapper extends DataMapper<ScheduledInstanceEntity, ScheduledInstanceHiveModel,
    ScheduledInstanceSupabaseModel> {
  @override
  ScheduledInstanceEntity toEntityFromHive(ScheduledInstanceHiveModel model) =>
      tryCatchSimple<ScheduledInstanceEntity>(
        action: () => model.copyWith(), // Ensures conversion from Hive model back to the entity.
        failureType: FailureType.local,
      );

  @override
  ScheduledInstanceEntity toEntityFromSupabase(
    ScheduledInstanceSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<ScheduledInstanceEntity>(
        action: () {
          return ScheduledInstanceEntity(
            id: model.id,
            userId: model.userId,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            description: model.exceptionReason,
            schedulerId: model.schedulerId,
            schedulerType: SchedulerType.fromName(model.schedulerType),
            endDateTime: model.endDateTime,
            startDateTime: model.startDateTime,
            taskStatus: TaskStatus.fromName(model.taskStatus),
            sequenceNumber: model.sequenceNumber,
            successPercentage: model.successPercentage,
            timezone: model.timezone,
          );
        },
        failureType: FailureType.local,
      );

  @override
  ScheduledInstanceHiveModel toHiveModel(ScheduledInstanceEntity entity) =>
      tryCatchSimple<ScheduledInstanceHiveModel>(
        action: () => ScheduledInstanceHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  ScheduledInstanceSupabaseModel toSupabaseModel(ScheduledInstanceEntity entity) =>
      tryCatchSimple<ScheduledInstanceSupabaseModel>(
        action: () => ScheduledInstanceSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<ScheduledInstanceSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(ScheduledInstanceSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledInstanceSupabaseModel> items) =>
      tryCatchSimple(
        action: () => items.map((item) => item.toJson()).toList(),
        failureType: FailureType.local,
      );

  @override
  ScheduledInstanceSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => ScheduledInstanceSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(ScheduledInstanceSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
