import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_activity/task_activity_supabase_model.dart';

class TaskActivityMapper
    extends Mapper<TaskActivityEntity, TaskActivityHiveModel, TaskActivitySupabaseModel> {
  @override
  TaskActivityEntity toEntityFromHive(TaskActivityHiveModel model) =>
      tryCatchSimple<TaskActivityEntity>(
        action: () => model.toEntity(),
        failureType: FailureType.local,
      );

  @override
  TaskActivityEntity toEntityFromSupabase(TaskActivitySupabaseModel model) =>
      tryCatchSimple<TaskActivityEntity>(
        action: () => TaskActivityEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          taskId: model.taskId,
          startAt: model.startAt,
          dueDate: model.dueDate,
          subTaskId: model.subTaskId,
          isPaused: model.isPaused,
          spentTime: model.spentTime,
        ),
        failureType: FailureType.local,
      );

  @override
  TaskActivityHiveModel toHiveModel(TaskActivityEntity entity) =>
      tryCatchSimple<TaskActivityHiveModel>(
        action: () => TaskActivityHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  TaskActivitySupabaseModel toSupabaseModel(TaskActivityEntity entity) =>
      tryCatchSimple<TaskActivitySupabaseModel>(
        action: () => TaskActivitySupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<TaskActivitySupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(TaskActivitySupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<TaskActivitySupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  TaskActivitySupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => TaskActivitySupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(TaskActivitySupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
