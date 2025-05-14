import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/sub_task.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/sub_task/sub_task_supabase_model.dart';

class SubTaskDataMapperImpl extends SubTaskDataMapper {
  @override
  SubTaskEntity toEntityFromHive(SubTaskHiveModel model) {
    try {
      return SubTaskEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        taskId: model.taskId,
        title: model.title,
        priority: model.priority,
        status: model.status,
        totalSpentTime: model.totalSpentTime,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  SubTaskEntity toEntityFromSupabase(SubTaskSupabaseModel model, {DataMap? relatedListModels}) {
    try {
      return SubTaskEntity(
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
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  SubTaskHiveModel toHiveModel(SubTaskEntity entity) {
    try {
      return SubTaskHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  SubTaskSupabaseModel toSupabaseModel(SubTaskEntity entity) {
    try {
      return SubTaskSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<SubTaskSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(SubTaskSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<SubTaskSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  SubTaskSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return SubTaskSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(SubTaskSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
