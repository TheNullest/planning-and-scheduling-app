import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/task/task_supabase_model.dart';

class TaskDataMapperImpl extends TaskDataMapper {
  @override
  TaskEntity toEntityFromHive(TaskHiveModel model) {
    try {
      return TaskEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        title: model.title,
        colorCode: model.colorCode,
        iconCode: model.iconCode,
        priority: model.priority,
        archived: model.archived,
        taskStatus: model.taskStatus,
        categoryIds: List.from(model.categoryIds),
        fixedTagIds: List.from(model.fixedTagIds),
        totalSpentTime: model.totalSpentTime,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TaskEntity toEntityFromSupabase(TaskSupabaseModel model, {DataMap? relatedListModels}) {
    try {
      return TaskEntity(
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
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TaskHiveModel toHiveModel(TaskEntity entity) {
    try {
      return TaskHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TaskSupabaseModel toSupabaseModel(TaskEntity entity) {
    try {
      return TaskSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<TaskSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(TaskSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<TaskSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TaskSupabaseModel fromJson(Map<String, dynamic> json) {
    try {
      return TaskSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(TaskSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
