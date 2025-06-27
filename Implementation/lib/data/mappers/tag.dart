import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/tag.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/tag/tag_supabase_model.dart';

class TagDataMapperImpl extends TagDataMapper {
  @override
  TagEntity toEntityFromHive(TagHiveModel model) {
    try {
      return TagEntity(
        id: model.id,
        taskId: model.taskId,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        title: model.title,
        colorCode: model.colorCode,
        iconCode: model.iconCode,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TagEntity toEntityFromSupabase(TagSupabaseModel model, {DataMap? relatedListModels}) {
    try {
      return TagEntity(
        id: model.id,
        taskId: model.taskId,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        title: model.title,
        colorCode: model.colorCode,
        iconCode: model.iconCode,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TagHiveModel toHiveModel(TagEntity entity) {
    try {
      return TagHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TagSupabaseModel toSupabaseModel(TagEntity entity) {
    try {
      return TagSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<TagSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(TagSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<TagSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TagSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return TagSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(TagSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
