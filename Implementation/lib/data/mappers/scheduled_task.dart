import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduled_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_task/scheduled_task_supabase_model.dart';

class ScheduledTaskMapper
    extends Mapper<ScheduledTaskEntity, ScheduledTaskHiveModel, ScheduledTaskSupabaseModel> {
  @override
  ScheduledTaskEntity toEntityFromHive(ScheduledTaskHiveModel model) =>
      tryCatchSimple<ScheduledTaskEntity>(
        action: () => model.toEntity(),
        failureType: FailureType.local,
      );

  @override
  ScheduledTaskEntity toEntityFromSupabase(ScheduledTaskSupabaseModel model) =>
      tryCatchSimple<ScheduledTaskEntity>(
        action: () => ScheduledTaskEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          taskId: model.taskId,
          dueDate: model.dueDate,
          goalId: model.goalId,
          repetitionType: model.repetitionType,
          specificTimes: [],
          timeUnit: model.timeUnit,
          willStartAt: model.willStartAt,
        ),
        failureType: FailureType.local,
      );

  @override
  ScheduledTaskHiveModel toHiveModel(ScheduledTaskEntity entity) =>
      tryCatchSimple<ScheduledTaskHiveModel>(
        action: () => ScheduledTaskHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  ScheduledTaskSupabaseModel toSupabaseModel(ScheduledTaskEntity entity) =>
      tryCatchSimple<ScheduledTaskSupabaseModel>(
        action: () => ScheduledTaskSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<ScheduledTaskSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(ScheduledTaskSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledTaskSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  ScheduledTaskSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => ScheduledTaskSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(ScheduledTaskSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
