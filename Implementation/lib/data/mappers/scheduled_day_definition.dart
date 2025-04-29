import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/data/mappers/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_day_definition.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_definition_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_time_ranges/time_range/time_range_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day_definition/scheduled_day_definition_supabase_model.dart';

class ScheduledDayDefinitionMapper extends Mapper<ScheduledDayDefinitionEntity,
    ScheduledDayDefinitionHiveModel, ScheduledDayDefinitionSupabaseModel> {
  @override
  ScheduledDayDefinitionEntity toEntityFromHive(ScheduledDayDefinitionHiveModel model) =>
      tryCatchSimple<ScheduledDayDefinitionEntity>(
        action: () => model.copyWith(), // Ensures conversion from Hive model back to the entity.
        failureType: FailureType.local,
      );

  @override
  ScheduledDayDefinitionEntity toEntityFromSupabase(
    ScheduledDayDefinitionSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<ScheduledDayDefinitionEntity>(
        action: () {
          final scheduledTimesEntity = TimeRangeMapper().toEntitiesFromSupabase(
            relatedListModels!['scheduled_times'] as List<TimeRangeSupabaseModel>,
          );
          return ScheduledDayDefinitionEntity(
            id: model.id,
            userId: model.userId,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            description: model.description,
            scheduleDefinitionId: model.scheduleDefinitionId,
            dayType: DayType.fromName(model.dayType),
            dayValue: model.dayValue,
            canRepeat: model.canRepeat,
            scheduledTimeIds: scheduledTimesEntity,
            enforceScheduleBounds: model.enforceScheduleBounds,
          );
        },
        failureType: FailureType.local,
      );

  @override
  ScheduledDayDefinitionHiveModel toHiveModel(ScheduledDayDefinitionEntity entity) =>
      tryCatchSimple<ScheduledDayDefinitionHiveModel>(
        action: () => ScheduledDayDefinitionHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  ScheduledDayDefinitionSupabaseModel toSupabaseModel(ScheduledDayDefinitionEntity entity) =>
      tryCatchSimple<ScheduledDayDefinitionSupabaseModel>(
        action: () => ScheduledDayDefinitionSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<ScheduledDayDefinitionSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(ScheduledDayDefinitionSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledDayDefinitionSupabaseModel> items) =>
      tryCatchSimple(
        action: () => items.map((item) => item.toJson()).toList(),
        failureType: FailureType.local,
      );

  @override
  ScheduledDayDefinitionSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => ScheduledDayDefinitionSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(ScheduledDayDefinitionSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
