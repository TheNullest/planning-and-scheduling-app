import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/data_mapper.dart';
import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day/scheduled_day_supabase_model.dart';

class ScheduledDayDataMapper
    extends DataMapper<ScheduledDayEntity, ScheduledDayHiveModel, ScheduledDaySupabaseModel> {
  @override
  ScheduledDayEntity toEntityFromHive(ScheduledDayHiveModel model) =>
      tryCatchSimple<ScheduledDayEntity>(
        action: () => model.copyWith(), // Ensures conversion from Hive model back to the entity.
        failureType: FailureType.local,
      );

  @override
  ScheduledDayEntity toEntityFromSupabase(
    ScheduledDaySupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<ScheduledDayEntity>(
        action: () => ScheduledDayEntity(
          id: model.id,
          userId: model.userId,
          createdAt: model.createdAt,
          updatedAt: model.updatedAt,
          description: model.description,
          scheduleConstraintId: model.scheduleConstraintId,
          dayType: DayType.fromName(model.dayType),
          dayValue: model.dayValue,
          canRepeat: model.canRepeat,
          scheduledTimeIds: List.from(model.scheduledTimes),
          enforceScheduleBounds: model.enforceScheduleBounds,
        ),
        failureType: FailureType.local,
      );

  @override
  ScheduledDayHiveModel toHiveModel(ScheduledDayEntity entity) =>
      tryCatchSimple<ScheduledDayHiveModel>(
        action: () => ScheduledDayHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  ScheduledDaySupabaseModel toSupabaseModel(ScheduledDayEntity entity) =>
      tryCatchSimple<ScheduledDaySupabaseModel>(
        action: () => ScheduledDaySupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<ScheduledDaySupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(ScheduledDaySupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduledDaySupabaseModel> items) => tryCatchSimple(
        action: () => items.map((item) => item.toJson()).toList(),
        failureType: FailureType.local,
      );

  @override
  ScheduledDaySupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => ScheduledDaySupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(ScheduledDaySupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
