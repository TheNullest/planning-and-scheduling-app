import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/data/mappers/time_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/scheduled_interval_definition.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_definition_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_time_ranges/time_range/time_range_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval_definition/scheduled_interval_definition_supabase_model.dart';
import 'package:zamaan/presentation_shared/enums/interval_unit.dart';

class ScheduledIntervalDefinitionMapper extends Mapper<ScheduledIntervalDefinitionEntity,
    ScheduledIntervalDefinitionHiveModel, ScheduledIntervalDefinitionSupabaseModel> {
  @override
  ScheduledIntervalDefinitionEntity toEntityFromHive(ScheduledIntervalDefinitionHiveModel model) =>
      tryCatchSimple<ScheduledIntervalDefinitionEntity>(
        action: () => model.copyWith(), // Converts the Hive model back to an entity.
        failureType: FailureType.local,
      );

  @override
  ScheduledIntervalDefinitionEntity toEntityFromSupabase(
    ScheduledIntervalDefinitionSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<ScheduledIntervalDefinitionEntity>(
        action: () {
          final scheduledTimesEntity = TimeRangeMapper().toEntitiesFromSupabase(
            relatedListModels!['scheduled_times'] as List<TimeRangeSupabaseModel>,
          );
          return ScheduledIntervalDefinitionEntity(
            id: model.id,
            userId: model.userId,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            description: model.description,
            scheduleDefinitionId: model.scheduleDefinitionId,
            intervalUnit: IntervalUnit.fromName(model.intervalUnit),
            intervalValue: model.intervalValue,
            scheduledTimes: scheduledTimesEntity,
            repeatCount: model.repeatCount,
            enforceScheduleBounds: model.enforceScheduleBounds,
            dateExceptions: model.dateExceptions.map((date) => DateRangeEntity(id: date)).toList(),
            timeExceptions: model.timeExceptions.map((time) => TimeRangeEntity(id: time)).toList(),
          );
        },
        failureType: FailureType.local,
      );

  @override
  ScheduledIntervalDefinitionHiveModel toHiveModel(ScheduledIntervalDefinitionEntity entity) =>
      tryCatchSimple<ScheduledIntervalDefinitionHiveModel>(
        action: () => ScheduledIntervalDefinitionHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  ScheduledIntervalDefinitionSupabaseModel toSupabaseModel(
    ScheduledIntervalDefinitionEntity entity,
  ) =>
      tryCatchSimple<ScheduledIntervalDefinitionSupabaseModel>(
        action: () => ScheduledIntervalDefinitionSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<ScheduledIntervalDefinitionSupabaseModel> fromJsonList(
    List<Map<String, dynamic>> jsonList,
  ) =>
      tryCatchSimple(
        action: () => jsonList.map(ScheduledIntervalDefinitionSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledIntervalDefinitionSupabaseModel> items) =>
      tryCatchSimple(
        action: () => items.map((item) => item.toJson()).toList(),
        failureType: FailureType.local,
      );

  @override
  ScheduledIntervalDefinitionSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => ScheduledIntervalDefinitionSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(ScheduledIntervalDefinitionSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
