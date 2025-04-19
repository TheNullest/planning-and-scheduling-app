import 'package:zamaan/core/enums/datasource_policy.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/scheduled_task.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class ScheduledTaskRepository implements BaseRepository<ScheduledTaskEntity> {
  // Additional search methods specific to ScheduledTimeEntity

  /// Retrieves scheduled times by the main task ID.
  ///
  /// - [taskId] - The ID of the main task.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduledTaskEntity>> getBatchByTaskId(
    String taskId, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves scheduled times by their start time.
  ///
  /// - [startTime] - The start time of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduledTaskEntity>> getBatchByStartTime(
    DateTime startTime, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves scheduled times by their repetition type.
  ///
  /// - [repetitionType] - The repetition type of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduledTaskEntity>> getBatchByRepetitionType(
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
  EResultFuture<List<ScheduledTaskEntity>> getBatchByTimeUnit(
    TimeUnit timeUnit, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves scheduled times by their specific times.
  ///
  /// [specificTimes] - The specific times of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduledTaskEntity>> getBatchBySpecificTimes(
    List<int> specificTimes, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  /// Retrieves scheduled times by their end time.
  ///
  /// - [endTime] - The end time of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<ScheduledTaskEntity>> getBatchByDueDate(
    DateTime endTime, {
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });

  EResultFuture<List<ScheduledTaskEntity>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
    DataSourcePolicy policy = DataSourcePolicy.localOnly,
  });
}
