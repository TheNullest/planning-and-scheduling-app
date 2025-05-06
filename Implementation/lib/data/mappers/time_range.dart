import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/time_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/time_range/time_range_supabase_model.dart';

class TimeRangeDataMapperImpl extends TimeRangeDataMapper {
  @override
  TimeRangeEntity toEntityFromHive(TimeRangeHiveModel model) => tryCatchSimple<TimeRangeEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  TimeRangeEntity toEntityFromSupabase(
    TimeRangeSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<TimeRangeEntity>(
        action: () => TimeRangeEntity(
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
  TimeRangeHiveModel toHiveModel(TimeRangeEntity model) => tryCatchSimple<TimeRangeHiveModel>(
        action: () => TimeRangeHiveModel(
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
  TimeRangeSupabaseModel toSupabaseModel(TimeRangeEntity entity) =>
      tryCatchSimple<TimeRangeSupabaseModel>(
        action: () => TimeRangeSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<TimeRangeSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) => tryCatchSimple(
        action: () => jsonList.map(TimeRangeSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<TimeRangeSupabaseModel> items) => tryCatchSimple(
        action: () => items.map((item) => item.toJson()).toList(),
        failureType: FailureType.local,
      );

  @override
  TimeRangeSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => TimeRangeSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(TimeRangeSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
