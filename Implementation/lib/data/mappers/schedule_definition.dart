import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/mappers/date_range.dart';
import 'package:zamaan/data/mappers/mapper.dart';
import 'package:zamaan/data/mappers/scheduled_day.dart';
import 'package:zamaan/data/mappers/scheduled_interval.dart';
import 'package:zamaan/data/mappers/time_range.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_definition_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_time_ranges/date_range/date_range_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/date_time_ranges/time_range/time_range_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/schedule_definition/schedule_definition_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_day/scheduled_day_supabase_model.dart';
import 'package:zamaan/features/tasks_management/data/models/remote/supabase/scheduled_interval/schuduled_interval_supabase_model.dart';

class ScheduleDefinitionMapper extends Mapper<ScheduleDefinitionEntity, ScheduleDefinitionHiveModel,
    ScheduleDefinitionSupabaseModel> {
  @override
  ScheduleDefinitionEntity toEntityFromHive(ScheduleDefinitionHiveModel model) =>
      tryCatchSimple<ScheduleDefinitionEntity>(
        action: () => model.copyWith(),
        failureType: FailureType.local,
      );

  @override
  ScheduleDefinitionEntity toEntityFromSupabase(
    ScheduleDefinitionSupabaseModel model, {
    DataMap? relatedListModels,
  }) =>
      tryCatchSimple<ScheduleDefinitionEntity>(
        action: () {
          final scheduledTimesEntity = TimeRangeMapper().toEntitiesFromSupabase(
            relatedListModels!['scheduled_times'] as List<TimeRangeSupabaseModel>,
          );

          final scheduledDateEntity = DateRangeMapper().toEntityFromSupabase(
            relatedListModels['scheduled_date'] as DateRangeSupabaseModel,
          );

          final scheduledDays = ScheduledDayMapper().toEntitiesFromSupabase(
            relatedListModels['scheduled_days'] as List<ScheduledDaySupabaseModel>,
          );

          final scheduledIntervals = ScheduledIntervalMapper().toEntitiesFromSupabase(
            relatedListModels['scheduled_intervals'] as List<ScheduledIntervalSupabaseModel>,
          );

          return ScheduleDefinitionEntity(
            id: model.id,
            description: model.description,
            createdAt: model.createdAt,
            updatedAt: model.updatedAt,
            userId: model.userId,
            taskId: model.taskId,
            repetitionType: RepetitionType.fromName(model.repetitionType),
            repeatCount: model.repeatCount,
            scheduledTimes: scheduledTimesEntity,
            scheduledDateRange: scheduledDateEntity,
            weekDays: model.weekDays.map(WeekDay.fromName).toList(),
            monthDays: model.monthDays,
            scheduledDays: scheduledDays,
            scheduledIntervals: scheduledIntervals,
          );
        },
        failureType: FailureType.local,
      );

  @override
  ScheduleDefinitionHiveModel toHiveModel(ScheduleDefinitionEntity entity) =>
      tryCatchSimple<ScheduleDefinitionHiveModel>(
        action: () => ScheduleDefinitionHiveModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  ScheduleDefinitionSupabaseModel toSupabaseModel(ScheduleDefinitionEntity entity) =>
      tryCatchSimple<ScheduleDefinitionSupabaseModel>(
        action: () => ScheduleDefinitionSupabaseModel.fromEntity(entity),
        failureType: FailureType.local,
      );

  @override
  List<ScheduleDefinitionSupabaseModel> fromJsonList(List<Map<String, dynamic>> jsonList) =>
      tryCatchSimple(
        action: () => jsonList.map(ScheduleDefinitionSupabaseModel.fromJson).toList(),
        failureType: FailureType.local,
      );

  @override
  List<Map<String, dynamic>> toJsonList(List<ScheduleDefinitionSupabaseModel> items) {
    return tryCatchSimple(
      action: () => items.map((item) => item.toJson()).toList(), // Implementing toJsonList
      failureType: FailureType.local,
    );
  }

  @override
  ScheduleDefinitionSupabaseModel? fromJson(Map<String, dynamic> json) => tryCatchSimple(
        action: () => ScheduleDefinitionSupabaseModel.fromJson(json),
        failureType: FailureType.local,
      );

  @override
  Map<String, dynamic> toJson(ScheduleDefinitionSupabaseModel item) => tryCatchSimple(
        action: () => item.toJson(),
        failureType: FailureType.local,
      );
}
