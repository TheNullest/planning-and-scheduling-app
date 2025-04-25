import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/sub_task/sub_task_supabase_model.dart';

class SubTaskMapper extends Mapper<SubTaskEntity, SubTaskHiveModel, SubTaskSupabaseModel> {
  @override
  SubTaskEntity toEntityFromHive(SubTaskHiveModel model) => tryCatchSimple<SubTaskEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  SubTaskEntity toEntityFromSupabase(SubTaskSupabaseModel model, {DataMap? relatedListModels}) =>
      tryCatchSimple<SubTaskEntity>(
        action: () => SubTaskEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          taskId: model.taskId,
          title: model.title,
          priority: Priority.fromName(model.priority),
          status: TaskStatus.fromName(model.status),
          totalSpentTime: model.totalSpentTime,
        ),
        failureType: FailureType.local,
      );

  @override
  SubTaskHiveModel toHiveModel(SubTaskEntity entity) => tryCatchSimple<SubTaskHiveModel>(
        action: () => SubTaskHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  SubTaskSupabaseModel toSupabaseModel(SubTaskEntity entity) =>
      tryCatchSimple<SubTaskSupabaseModel>(
        action: () => SubTaskSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<SubTaskSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) => tryCatchSimple(
        action: () => jsonList.map(SubTaskSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<SubTaskSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  SubTaskSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => SubTaskSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(SubTaskSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
