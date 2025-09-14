import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/time_range.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/time_range/time_range_supabase_model.dart';

class TimeRangeDataMapperImpl extends TimeRangeDataMapper {
  @override
  TimeRangeEntity toEntityFromHive(TimeRangeHiveModel model) {
    try {
      return TimeRangeEntity(
        id: model.id,
        start: model.start,
        end: model.end,
        createdAt: model.createdAt,
        parentId: model.parentId,
        userId: model.userId,
        updatedAt: model.updatedAt,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TimeRangeEntity toEntityFromSupabase(
    TimeRangeSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return TimeRangeEntity(
        id: model.id,
        start: model.start,
        end: model.end,
        createdAt: model.createdAt,
        parentId: model.parentId,
        userId: model.userId,
        updatedAt: model.updatedAt,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TimeRangeHiveModel toHiveModel(TimeRangeEntity model) {
    try {
      return TimeRangeHiveModel(
        id: model.id,
        start: model.start,
        end: model.end,
        createdAt: model.createdAt,
        parentId: model.parentId,
        userId: model.userId,
        updatedAt: model.updatedAt,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TimeRangeSupabaseModel toSupabaseModel(TimeRangeEntity entity) {
    try {
      return TimeRangeSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<TimeRangeSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(TimeRangeSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<TimeRangeSupabaseModel> items) {
    try {
      return items.map((item) => item.toJson()).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  TimeRangeSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return TimeRangeSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  Map<String, dynamic> toJson(TimeRangeSupabaseModel item) {
    try {
      return item.toJson();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
