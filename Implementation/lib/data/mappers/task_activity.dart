import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/task_activity.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task_activity/task_activity_supabase_model.dart';

class TaskActivityDataMapperImpl extends TaskActivityDataMapper {
  @override
  TaskActivityEntity toEntityFromHive(TaskActivityHiveModel model) {
    try {
      return TaskActivityEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        referenceId: model.referenceId,
        referenceType: model.referenceType,
        taskStatus: model.taskStatus,
        schedulerId: model.schedulerId,
        variableTagIds: model.variableTagIds,
        startedAt: model.startedAt,
        endedAt: model.endedAt,
        schedulerType: model.schedulerType,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TaskActivityEntity toEntityFromSupabase(
    TaskActivitySupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
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
        variableTagIds: model.variableTagIds,
        startedAt: model.startedAt,
        endedAt: model.endedAt,
        schedulerType: ScheduleType.fromName(model.schedulerType!),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TaskActivityHiveModel toHiveModel(TaskActivityEntity entity) {
    try {
      return TaskActivityHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TaskActivitySupabaseModel toSupabaseModel(TaskActivityEntity entity) {
    try {
      return TaskActivitySupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<TaskActivitySupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(TaskActivitySupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<TaskActivitySupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TaskActivitySupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return TaskActivitySupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(TaskActivitySupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
