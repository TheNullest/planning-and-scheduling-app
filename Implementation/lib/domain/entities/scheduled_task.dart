import 'package:hive/hive.dart';
import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

/// Represents a task scheduler entity with various repetition patterns.
/// This class is used to define the scheduling details of a task, including
/// its start time, end time, and repetition patterns.

class ScheduledTaskEntity extends BaseEntityAbstraction {
  /// Constructor for creating a `ScheduledTaskEntity`.
  ///
  /// - [taskId] is the ID of the main task.
  /// - [willStartAt] is the start time of the task.
  /// - [repetitionType] is the type of repetition (default: RepetitionType.every).
  /// - [timeUnit] is the unit of time for the repetition (default: TimeUnit.day).
  /// - [specificTimes] are the specific times for the repetition (optional).
  /// - [dueDate] is the end time of the task (**Conditional**).
  ScheduledTaskEntity({
    required this.taskId,
    super.id,
    super.updatedAt,
    super.createdAt,
    super.userId,
    super.description,
    this.willStartAt,
    this.dueDate,
    String? repetitionType,
    String? timeUnit,
    this.specificTimes,
  })  : repetitionType = repetitionType ?? RepetitionType.every.name,
        timeUnit = timeUnit ?? TimeUnit.day.name;

  /// Creates an empty `ScheduledTaskEntity` with default values.
  ScheduledTaskEntity.empty()
      : this(
          taskId: '1',
          willStartAt: DateTime(2024, 08),
          dueDate: DateTime(2024, 10),
        );

  /// The ID of the main task associated with this schedule.
  @HiveField(11)
  final String taskId;


  /// The start time of the task.\
  /// This field indicates when the task is scheduled to start.\
  /// If the task has a specific start time, it should be set here.
  @HiveField(12)
  final DateTime? willStartAt;

  /// Retrieves scheduled times by their repetition type.
  ///
  /// [repetitionType] - The type of repetition, based on the `RepetitionType` enum.
  /// - `index`.`type`.`value` : `description`
  /// - `0.RepetitionType.every`: Repeats every specified time unit.
  /// - `1.RepetitionType.per`: Repeats per a specified interval and time unit.
  /// - `2.RepetitionType.interval`: Repeats at regular intervals of the specified time unit.
  /// - `3.RepetitionType.specificDateTimes`: Repeats on specific dateTimes.
  @HiveField(13)
  final String repetitionType;

  /// The unit of time for the repetition (default: TimeUnit.day).
  ///
  /// - `index`.`type`.`value` : `description`
  /// - `0.TimeUnit.minute`: Represents an minute.
  /// - `1.TimeUnit.hour`: Represents an hour.
  /// - `2.TimeUnit.day`: Represents a day.
  /// - `3.TimeUnit.week`: Represents a week.
  /// - `4.TimeUnit.month`: Represents a month.
  /// - `5.TimeUnit.year`: Represents a year.
  @HiveField(14)
  final String timeUnit;

  /// The specific times for the repetition (optional).
  ///
  /// - For `RepetitionType.every`: Specifies times like [10, 12, 16] o'clock every 2 days.
  /// - For `RepetitionType.specificDays`: Specifies days like [2, 3, 5] of each week or [10, 20, 25] of each month.
  @HiveField(15)
  final List<int>? specificTimes;

  /// **Conditional End Time:**
  ///
  /// - If the task has a **predefined end time**, then `dueDate` should be set
  ///   at the same time as the entire `ScheduledTaskEntity` definition.
  ///   This signifies a fixed duration for the task.
  /// - If the task has no predefined end time, `dueDate` will be set later
  ///   when the task is actually completed. This indicates a dynamic duration.
  @HiveField(16)
  final DateTime? dueDate;

  @override
  ScheduledTaskEntity copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? taskId,
    DateTime? willStartAt,
    DateTime? dueDate,
    String? repetitionType,
    String? timeUnit,
    List<int>? specificTimes,
  }) =>
      ScheduledTaskEntity(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        taskId: taskId ?? this.taskId,
        willStartAt: willStartAt ?? this.willStartAt,
        dueDate: dueDate ?? this.dueDate,
        repetitionType: repetitionType ?? this.repetitionType,
        timeUnit: timeUnit ?? this.timeUnit,
        specificTimes: specificTimes ?? this.specificTimes,
      );

  ScheduledTaskEntity toEntity() => ScheduledTaskEntity(
        id: id,
        updatedAt: updatedAt,
        description: description,
        createdAt: createdAt,
        userId: userId,
        taskId: taskId,
        willStartAt: willStartAt,
        dueDate: dueDate,
        repetitionType: repetitionType,
        timeUnit: timeUnit,
        specificTimes: specificTimes,
      );

  /// Returns a list of properties for equality comparison.
  @override
  List<Object?> get props => [
        ...super.props,
        taskId,
        willStartAt,
        dueDate,
        repetitionType,
        timeUnit,
        specificTimes,
      ];
}
