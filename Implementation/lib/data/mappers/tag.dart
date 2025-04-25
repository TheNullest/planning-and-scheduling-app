import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/tag/tag_supabase_model.dart';

class TagMapper extends Mapper<TagEntity, TagHiveModel, TagSupabaseModel> {
  @override
  TagEntity toEntityFromHive(TagHiveModel model) => tryCatchSimple<TagEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  TagEntity toEntityFromSupabase(TagSupabaseModel model, {DataMap? relatedListModels}) =>
      tryCatchSimple<TagEntity>(
        action: () => TagEntity(
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
  TagHiveModel toHiveModel(TagEntity entity) => tryCatchSimple<TagHiveModel>(
        action: () => TagHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  TagSupabaseModel toSupabaseModel(TagEntity entity) => tryCatchSimple<TagSupabaseModel>(
        action: () => TagSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<TagSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) => tryCatchSimple(
        action: () => jsonList.map(TagSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<TagSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  TagSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => TagSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(TagSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
