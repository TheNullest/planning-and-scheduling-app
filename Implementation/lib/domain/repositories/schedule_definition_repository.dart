import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/schedule_definition.dart';
import 'package:zamaan/domain/enums/datasource_policy.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class ScheduleDefinitionRepository
    implements BaseRepository<ScheduleDefinitionEntity> {
// ********************************************                  used                 ********************************************
// ********************************************                  used                 ********************************************
// ********************************************                  used                 ********************************************

  EResultFuture<List<ScheduleDefinitionEntity>> getTodaySchedules(
    DateTime date, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

// ********************************************                not used               ********************************************
// ********************************************                not used               ********************************************
// ********************************************                not used               ********************************************
// ********************************************                not used               ********************************************
// ********************************************                not used               ********************************************
// ********************************************                not used               ********************************************
// ********************************************                not used               ********************************************

  // Additional search methods specific to ScheduledTimeEntity

  /// Retrieves scheduled times by the main task ID.
  ///
  /// - [taskId] - The ID of the main task.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduleDefinitionEntity>> getBatchByTaskId(
    String taskId, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves scheduled times by their start time.
  ///
  /// - [startTime] - The start time of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduleDefinitionEntity>> getBatchByStartTime(
    DateTime startTime, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves scheduled times by their repetition type.
  ///
  /// - [repetitionType] - The repetition type of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduleDefinitionEntity>> getBatchByRepetitionType(
    RepetitionType repetitionType, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves scheduled times by their time unit.
  ///
  /// [timeUnit] - The time unit of the scheduled times, based on the `TimeUnit` enum.
  /// - `index`.`type`.`value` : `description`
  /// - `0.TimeUnit.minute`: Represents a minute.
  /// - `1.TimeUnit.hour`: Represents an hour.
  /// - `2.TimeUnit.day`: Represents a day.
  /// - `3.TimeUnit.week`: Represents a week.
  /// - `4.TimeUnit.month`: Represents a month.
  /// - `5.TimeUnit.year`: Represents a year.
  ///
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduleDefinitionEntity>> getBatchByTimeUnit(
    IntervalUnit timeUnit, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves scheduled times by their specific times.
  ///
  /// [specificTimes] - The specific times of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduleDefinitionEntity>> getBatchBySpecificTimes(
    List<int> specificTimes, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves scheduled times by their end time.
  ///
  /// - [endTime] - The end time of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduleDefinitionEntity>> getBatchByDueDate(
    DateTime endTime, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  EResultFuture<List<ScheduleDefinitionEntity>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });
}
