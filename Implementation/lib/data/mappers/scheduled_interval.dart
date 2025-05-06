import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/bases/scheduled_interval.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/enums/hive/interval_unit.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval/scheduled_interval_supabase_model.dart';

class ScheduledIntervalDataMapperImpl extends ScheduledIntervalDataMapper {
  @override
  ScheduledIntervalEntity toEntityFromHive(ScheduledIntervalHiveModel model) =>
      tryCatchSimple<ScheduledIntervalEntity>(
        action: () => ScheduledIntervalEntity(
          id: model.id,
          userId: model.userId,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          description: model.description,
          startDate: model.startDate,
          consecutiveOccurrences: model.consecutiveOccurrences,
          scheduleConstraintId: model.scheduleConstraintId,
          intervalUnit: model.intervalUnit,
          intervalValue: model.intervalValue,
          scheduledTimeIds: List.from(model.scheduledTimeIds),
          repeatCount: model.repeatCount,
          enforceScheduleBounds: model.enforceScheduleBounds,
        ), // Converts the Hive model back to an entity.
        failureType: FailureType.local,
      );

  @override
  ScheduledIntervalEntity toEntityFromSupabase(
    ScheduledIntervalSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<ScheduledIntervalEntity>(
        action: () => ScheduledIntervalEntity(
          id: model.id,
          userId: model.userId,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          description: model.description,
          startDate: model.startAt,
          consecutiveOccurrences: model.consecutiveOccurrences,
          scheduleConstraintId: model.scheduleConstraintId,
          intervalUnit: IntervalUnit.fromName(model.intervalUnit),
          intervalValue: model.intervalValue,
          scheduledTimeIds: List.from(model.scheduledTimeIds),
          repeatCount: model.repeatCount,
          enforceScheduleBounds: model.enforceScheduleBounds,
        ),
        failureType: FailureType.local,
      );

  @override
  ScheduledIntervalHiveModel toHiveModel(ScheduledIntervalEntity entity) =>
      tryCatchSimple<ScheduledIntervalHiveModel>(
        action: () => ScheduledIntervalHiveModel(
          id: entity.id,
          userId: entity.userId,
          createdAt: entity.createdAt,
          updatedAt: entity.updatedAt,
          description: entity.description,
          startDate: entity.startDate,
          consecutiveOccurrences: entity.consecutiveOccurrences,
          scheduleConstraintId: entity.scheduleConstraintId,
          intervalUnit: entity.intervalUnit,
          intervalValue: entity.intervalValue,
          scheduledTimeIds: List.from(entity.scheduledTimeIds),
          repeatCount: entity.repeatCount,
          enforceScheduleBounds: entity.enforceScheduleBounds,
        ),
        failureType: FailureType.local,
      );

  @override
  ScheduledIntervalSupabaseModel toSupabaseModel(
    ScheduledIntervalEntity entity,
  ) =>
      tryCatchSimple<ScheduledIntervalSupabaseModel>(
        action: () => ScheduledIntervalSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<ScheduledIntervalSupabaseModel> fromJsonList(
    List<Map<String, dynamic>> jsonList,
  ) =>
      tryCatchSimple(
        action: () => jsonList.map(ScheduledIntervalSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledIntervalSupabaseModel> items) =>
      tryCatchSimple(
        action: () => items.map((item) => item.toJson()).toList(),
        failureType: FailureType.local,
      );

  @override
  ScheduledIntervalSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => ScheduledIntervalSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(ScheduledIntervalSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
