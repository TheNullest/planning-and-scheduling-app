import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/date_time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_range/date_range_supabase_model.dart';

class DateRangeDataMapperImpl extends DateRangeDataMapper {
  @override
  DateRangeEntity toEntityFromHive(DateRangeHiveModel model) => tryCatchSimple<DateRangeEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  DateRangeEntity toEntityFromSupabase(
    DateRangeSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<DateRangeEntity>(
        action: () => DateRangeEntity(
          id: model.id,
          start: model.start,
          end: model.end,
          createdAt: model.createdAt,
          parentId: model.parentId,
          userId: model.userId,
          updatedAt: model.updatedAt,
        ),
        failureType: FailureType.local,
      );

  @override
  DateRangeHiveModel toHiveModel(DateRangeEntity entity) => tryCatchSimple<DateRangeHiveModel>(
        action: () => DateRangeHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  DateRangeSupabaseModel toSupabaseModel(DateRangeEntity entity) =>
      tryCatchSimple<DateRangeSupabaseModel>(
        action: () => DateRangeSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<DateRangeSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) => tryCatchSimple(
        action: () => jsonList.map(DateRangeSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<DateRangeSupabaseModel> items) => tryCatchSimple(
        action: () => items.map((item) => item.toJson()).toList(),
        failureType: FailureType.local,
      );

  @override
  DateRangeSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => DateRangeSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(DateRangeSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
