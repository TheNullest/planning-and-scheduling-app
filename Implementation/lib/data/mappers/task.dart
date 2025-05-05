import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/data_mapper.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task/task_supabase_model.dart';

class TaskDataMapper extends DataMapper<TaskEntity, TaskHiveModel, TaskSupabaseModel> {
  @override
  TaskEntity toEntityFromHive(TaskHiveModel model) => tryCatchSimple<TaskEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  TaskEntity toEntityFromSupabase(TaskSupabaseModel model, {DataMap? relatedListModels}) =>
      tryCatchSimple<TaskEntity>(
        action: () => TaskEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          title: model.title,
          colorCode: model.colorCode,
          iconCode: model.iconCode,
          priority: Priority.fromName(model.priority),
          archived: model.archived,
          taskStatus: TaskStatus.fromName(model.taskStatus),
          categoryIds: List.from(model.categoryIds),
          fixedTagIds: List.from(model.fixedTagIds),
          totalSpentTime: model.totalSpentTime,
          subTaskIds: List.from(model.subTaskIds),
          scheduleConstraint: model.scheduleConstraintId,
          scheduledDays: List.from(model.scheduledDayIds),
          scheduledIntervals: List.from(model.scheduledIntervalIds),
          scheduledInstances: List.from(model.scheduledInstanceIds),
        ),
        failureType: FailureType.local,
      );

  @override
  TaskHiveModel toHiveModel(TaskEntity entity) => tryCatchSimple<TaskHiveModel>(
        action: () => TaskHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  TaskSupabaseModel toSupabaseModel(TaskEntity entity) => tryCatchSimple<TaskSupabaseModel>(
        action: () => TaskSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<TaskSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) => tryCatchSimple(
        action: () => jsonList.map(TaskSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<TaskSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  TaskSupabaseModel fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => TaskSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(TaskSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
