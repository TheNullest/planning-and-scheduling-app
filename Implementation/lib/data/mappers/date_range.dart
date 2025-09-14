import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/date_range.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/constraint_date_time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_range/date_range_supabase_model.dart';

class DateRangeDataMapperImpl extends DateRangeDataMapper {
  @override
  DateRangeEntity toEntityFromHive(DateRangeHiveModel model) {
    try {
      return DateRangeEntity(
        id: model.id,
        startDate: model.startDate,
        endDate: model.endDate,
        createdAt: model.createdAt,
        parentId: model.parentId,
        userId: model.userId,
        updatedAt: model.updatedAt,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  DateRangeEntity toEntityFromSupabase(
    DateRangeSupabaseModel model, {
    DataMap? relatedListModels,
  }) {
    try {
      return DateRangeEntity(
        id: model.id,
        startDate: model.startDate,
        endDate: model.endDate,
        createdAt: model.createdAt,
        parentId: model.parentId,
        userId: model.userId,
        updatedAt: model.updatedAt,
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  DateRangeHiveModel toHiveModel(DateRangeEntity entity) {
    try {
      return DateRangeHiveModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  DateRangeSupabaseModel toSupabaseModel(DateRangeEntity entity) {
    try {
      return DateRangeSupabaseModel.fromEntity(entity);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  List<DateRangeSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    try {
      return jsonList.map(DateRangeSupabaseModel.fromJson).toList();
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  List<Map<String, dynamic>> toJsonList(List<DateRangeSupabaseModel> items) {
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
  DateRangeSupabaseModel? fromJson(Map<String, dynamic> json) {
    try {
      return DateRangeSupabaseModel.fromJson(json);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(
        e: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Map<String, dynamic> toJson(DateRangeSupabaseModel item) {
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
