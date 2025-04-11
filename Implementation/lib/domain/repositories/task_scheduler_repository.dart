import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';

abstract interface class TaskSchedulerRepository implements BaseRepository<TaskSchedulerEntity> {
  // Additional search methods specific to ScheduledTimeEntity

  /// Retrieves scheduled times by the main task ID.
  ///
  /// - [taskId] - The ID of the main task.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<TaskSchedulerEntity>> getBatchByTaskId(
    String taskId, {
    bool fromLocal = false,
    bool fromRemote = false,
  });

  /// Retrieves scheduled times by their start time.
  ///
  /// - [startTime] - The start time of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<TaskSchedulerEntity>> getBatchByStartTime(
    DateTime startTime, {
    bool fromLocal = false,
    bool fromRemote = false,
  });

  /// Retrieves scheduled times by their repetition type.
  ///
  /// - [repetitionType] - The repetition type of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<TaskSchedulerEntity>> getBatchByRepetitionType(
    RepetitionType repetitionType, {
    bool fromLocal = false,
    bool fromRemote = false,
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
  EResultFuture<List<TaskSchedulerEntity>> getBatchByTimeUnit(
    TimeUnit timeUnit, {
    bool fromLocal = false,
    bool fromRemote = false,
  });

  /// Retrieves scheduled times by their specific times.
  ///
  /// [specificTimes] - The specific times of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<TaskSchedulerEntity>> getBatchBySpecificTimes(
    List<int> specificTimes, {
    bool fromLocal = false,
    bool fromRemote = false,
  });

  /// Retrieves scheduled times by their end time.
  ///
  /// - [endTime] - The end time of the scheduled times.
  /// Returns a `ResultFuture<List<ScheduledTimeEntity>>` containing the matching scheduled times.
  EResultFuture<List<TaskSchedulerEntity>> getBatchByDueDate(
    DateTime endTime, {
    bool fromLocal = false,
    bool fromRemote = false,
  });

  EResultFuture<List<TaskSchedulerEntity>> getBatchByTaskIdsAndDateRange({
    required List<String> taskIds,
    required DateTime? startAt,
    required DateTime? dueDate,
    bool fromLocal = false,
    bool fromRemote = false,
  });
}
