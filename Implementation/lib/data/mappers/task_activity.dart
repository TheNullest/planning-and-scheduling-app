import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/date_range.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/data/mappers/tag.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_time_ranges/date_range/date_range_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/tag/tag_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_activity/task_activity_supabase_model.dart';

class TaskActivityMapper
    extends Mapper<TaskActivityEntity, TaskActivityHiveModel, TaskActivitySupabaseModel> {
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
        action: () {
          final tagsEntity = TagMapper().toEntitiesFromSupabase(
            relatedListModels!['scheduled_times'] as List<TagSupabaseModel>,
          );
          final scheduledDateEntity = DateRangeMapper().toEntityFromSupabase(
            relatedListModels['scheduled_date'] as DateRangeSupabaseModel,
          );
          return TaskActivityEntity(
            id: model.id,
            description: model.description,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            userId: model.userId,
            referenceId: model.refId,
            referenceType: ReferenceType.fromName(model.refType),
            taskStatus: TaskStatus.fromName(model.taskStatus),
            schedulerId: model.schedulerId,
            variableTagIds: tagsEntity,
            dateTimeRangeId: scheduledDateEntity,
            schedulerType: SchedulerType.fromName(model.schedulerType!),
          );
        },
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
  List<TaskActivitySupabaseModel> fromJsonList(List<Map<MeasurementUnit, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(TaskActivitySupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<MeasurementUnit, dynamic>> toJsonList(List<TaskActivitySupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  TaskActivitySupabaseModel? fromJson(Map<MeasurementUnit, dynamic> json) => tryCatchSimple(
        action: () => TaskActivitySupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<MeasurementUnit, dynamic> toJson(TaskActivitySupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
