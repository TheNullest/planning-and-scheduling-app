import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/category.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/category_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/category/category_supabase_model.dart';

class CategoryDataMapperImpl extends CategoryDataMapper {
  @override
  CategoryEntity toEntityFromHive(CategoryHiveModel model) => tryCatchSimple<CategoryEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  CategoryEntity toEntityFromSupabase(CategorySupabaseModel model, {DataMap? relatedListModels}) =>
      tryCatchSimple<CategoryEntity>(
        action: () => CategoryEntity(
          id: model.id,
          description: model.description,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          userId: model.userId,
          title: model.title,
          colorCode: model.colorCode,
          iconCode: model.iconCode,
        ),
        failureType: FailureType.local,
      );

  @override
  CategoryHiveModel toHiveModel(CategoryEntity entity) => tryCatchSimple<CategoryHiveModel>(
        action: () => CategoryHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  CategorySupabaseModel toSupabaseModel(CategoryEntity entity) =>
      tryCatchSimple<CategorySupabaseModel>(
        action: () => CategorySupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<CategorySupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) => tryCatchSimple(
        action: () => jsonList.map(CategorySupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<CategorySupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  CategorySupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => CategorySupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(CategorySupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
