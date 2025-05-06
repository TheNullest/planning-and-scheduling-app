import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/task_activity.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_activity/task_activity_supabase_model.dart';

class TaskActivityDataMapperImpl extends TaskActivityDataMapper {
  @override
  TaskActivityEntity toEntityFromHive(TaskActivityHiveModel model) =>
      tryCatchSimple<TaskActivityEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  TaskActivityEntity toEntityFromSupabase(
    TaskActivitySupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<TaskActivityEntity>(
        action: () => TaskActivityEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          referenceId: model.refId,
          referenceType: ReferenceType.fromName(model.refType),
          taskStatus: TaskStatus.fromName(model.taskStatus),
          schedulerId: model.schedulerId,
          variableTagIds: model.variableTagIds,
          startedAt: model.startedAt,
          endedAt: model.endedAt,
          schedulerType: SchedulerType.fromName(model.schedulerType!),
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
