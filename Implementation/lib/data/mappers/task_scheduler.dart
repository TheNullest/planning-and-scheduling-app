import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_scheduler_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_scheduler/task_scheduler_supabase_model.dart';

class TaskSchedulerMapper
    extends Mapper<TaskSchedulerEntity, TaskSchedulerHiveModel, TaskSchedulerSupabaseModel> {
  @override
  TaskSchedulerEntity toEntityFromHive(TaskSchedulerHiveModel model) =>
      tryCatchSimple<TaskSchedulerEntity>(
        action: () => model.toEntity(),
        failureType: FailureType.local,
      );

  @override
  TaskSchedulerEntity toEntityFromSupabase(TaskSchedulerSupabaseModel model) =>
      tryCatchSimple<TaskSchedulerEntity>(
        action: () => TaskSchedulerEntity(
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
  TaskSchedulerHiveModel toHiveModel(TaskSchedulerEntity entity) =>
      tryCatchSimple<TaskSchedulerHiveModel>(
        action: () => TaskSchedulerHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  TaskSchedulerSupabaseModel toSupabaseModel(TaskSchedulerEntity entity) =>
      tryCatchSimple<TaskSchedulerSupabaseModel>(
        action: () => TaskSchedulerSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<TaskSchedulerSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(TaskSchedulerSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<TaskSchedulerSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  TaskSchedulerSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => TaskSchedulerSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(TaskSchedulerSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
