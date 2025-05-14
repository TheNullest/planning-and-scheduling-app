import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/category.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/category_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/category/category_supabase_model.dart';

class CategoryDataMapperImpl extends CategoryDataMapper {
  @override
  CategoryEntity toEntityFromHive(CategoryHiveModel model) {
    try {
      return CategoryEntity(
        id: model.id,
        userId: model.userId,
        createdAt: model.createdAt,
        description: model.description,
        updatedAt: model.updatedAt,
        title: model.title,
        colorCode: model.colorCode,
        iconCode: model.iconCode,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  CategoryEntity toEntityFromSupabase(CategorySupabaseModel model, {DataMap? relatedListModels}) {
    try {
      return CategoryEntity(
        id: model.id,
        description: model.description,
        createdAt: model.createdAt,
        updatedAt: model.updatedAt,
        userId: model.userId,
        title: model.title,
        colorCode: model.colorCode,
        iconCode: model.iconCode,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  CategoryHiveModel toHiveModel(CategoryEntity entity) {
    try {
      return CategoryHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  CategorySupabaseModel toSupabaseModel(CategoryEntity entity) {
    try {
      return CategorySupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  List<CategorySupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(CategorySupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<CategorySupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  CategorySupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return CategorySupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Map<String, dynamic> toJson(CategorySupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }
}
