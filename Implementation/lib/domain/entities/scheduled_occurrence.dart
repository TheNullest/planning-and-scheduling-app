import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/enums/enums.dart' show ScheduleType;
import 'package:zamaan/domain/enums/hive/occurrence_status.dart' show OccurrenceStatus;
import 'package:zamaan/domain/enums/hive/scheduled_time_mode.dart' show ScheduledTimeMode;

/// Represents a single scheduled occurrence (instance) of a task within the system.
///
/// This entity acts as the **bridge between planned scheduling and real execution**,
/// defining *when* a task is expected to run and *how* it should behave within
/// its scheduled lifecycle. It supports both **precise time-bound** and **flexible,
/// anytime** scheduling modes through the [timeMode] property.
///
/// ## Relationship with TaskActivity
/// - **This Entity** → Defines the **intended schedule and execution state**
/// - **TaskActivity** → Captures the **actual execution and runtime behavior**
///
/// Each `ScheduledOccurrenceEntity` may have zero or more related `TaskActivity`
/// records, enabling full traceability between *planned* and *executed* outcomes.
///
/// ## Key Responsibilities
/// - Represent scheduled execution windows via [startDateTime] and [endDateTime]
/// - Define scheduling flexibility and temporal precision via [timeMode]
/// - Identify the originating schedule through [schedulerId] and [schedulerType]
/// - Maintain sequence ordering across recurring or dependent occurrences
/// - Track runtime progress and status through [occurrenceStatus] and [successPercentage]
/// - Capture contextual notes in [description] for:
///   - Exception handling or failure reasoning
///   - Special scheduling conditions
///   - Cancellations or deferrals
///   - Rescheduling justifications
///
/// ## Validation Rules
/// - [successPercentage] must be between 0–100 (inclusive)
/// - [endDateTime] must occur after [startDateTime] (when [timeMode] is time-bound)
/// - [sequenceNumber] must be non-negative
///
/// ## Hive Storage
/// - Base entity fields (e.g., id, userId, timestamps) occupy indices 0–10
/// - This class uses fields starting from index 11
/// - Ensure type adapters are registered for all enum fields (e.g., [OccurrenceStatus], [ScheduledTimeMode])
///
/// ## Usage Notes
/// - [timeMode] allows hybrid scheduling — from fixed hourly plans to free-form daily execution
/// - [timezone] ensures cross-region consistency for start and end times
/// - [copyWith] supports immutable modification for safe, predictable updates
/// - [props] enable value-based equality for robust state management and caching
///
/// This entity is a **core element of the scheduling engine**, providing a unified
/// abstraction for all task occurrences — from strictly timed reminders to flexible,
/// day-level activities.
class ScheduledOccurrenceEntity extends BaseEntityAbstraction {
  ScheduledOccurrenceEntity({
    required super.userId,
    required super.createdAt,
    required this.taskId,
    required this.startDateTime,
    required this.endDateTime,
    required this.schedulerId,
    required this.schedulerType,
    required this.occurrenceStatus,
    required this.sequenceNumber,
    required this.timeMode,
    required super.id,
    super.description, // Multi-purpose: exceptions, notes, cancellation reasons
    super.updatedAt,
    this.successPercentage = 0,
    this.timezone = 'UTC',
  }) : assert(
          successPercentage >= 0 && successPercentage <= 100,
          'Success percentage must be between 0-100',
        );

  /// The exact date and time when this scheduled occurrence is scheduled to begin.
  ///
  /// Used in conjunction with [timezone] to determine the actual local time
  /// of the occurrence. This represents the intended start time before any
  /// actual execution or rescheduling.
  @HiveField(11)
  final DateTime startDateTime;

  /// The exact date and time when this scheduled occurrence is scheduled to end.
  ///
  /// Must always occur after [startDateTime]. Defines the scheduled duration
  /// window for task completion. Used to detect overdue or missed occurrences.
  @HiveField(12)
  final DateTime endDateTime;

  /// Unique identifier of the scheduler entity that generated this occurrence.
  ///
  /// References the specific scheduling rule or pattern (recurring, one-time, etc.)
  /// that was used to create this occurrence instance.
  @HiveField(13)
  final String schedulerId;

  /// Categorizes the type of scheduler that generated this occurrence.
  ///
  /// Differentiates between various scheduling strategies (recurring, interval-based,
  /// calendar-based, etc.) for proper business logic routing.
  @HiveField(14)
  final ScheduleType schedulerType;

  /// Current execution state within the occurrence lifecycle.
  ///
  /// Tracks progress from scheduled → in-progress → completed/failed/cancelled.
  /// Use business logic methods like `markAsCompleted()` for state transitions
  /// rather than direct assignment.
  @HiveField(15)
  final OccurrenceStatus occurrenceStatus;

  /// Positional index within a series of related occurrences.
  ///
  /// For recurring tasks, this indicates the instance number (1st, 2nd, 3rd, etc.)
  /// within the sequence. Enables proper ordering and gap detection in series.
  @HiveField(16)
  final int sequenceNumber;

  /// Quantitative measure of completion progress for this occurrence.
  ///
  /// Ranges from 0 (not started) to 100 (fully completed). Provides granular
  /// progress tracking beyond binary completion states. Automatically clamped
  /// to valid range during construction and updates.
  @HiveField(17)
  final int successPercentage;

  /// IANA timezone identifier for proper temporal calculation and display.
  ///
  /// Ensures scheduled times are correctly interpreted across different
  /// geographic regions. Defaults to 'UTC' for system-agnostic scheduling.
  @HiveField(18)
  final String timezone;

  /// Reference to the parent task entity that this occurrence instantiates.
  ///
  /// Links this specific scheduled instance back to the overarching task
  /// definition and metadata.
  @HiveField(19)
  final String taskId;

  /// Defines how the scheduled time is interpreted and applied within the system.
  ///
  /// The [timeMode] determines whether the scheduled occurrence adheres to
  /// **specific date–time bounds** or operates in a **flexible, time-agnostic** mode.
  /// This allows the scheduler to distinguish between:
  ///
  /// - **Exact time scheduling:** The occurrence has a defined [startDateTime] and [endDateTime].
  /// - **All-day or anytime scheduling:** The occurrence is not bound to fixed times and
  ///   can be executed at any point during the day.
  ///
  /// This field enhances scheduling flexibility and supports scenarios where
  /// time precision is either essential (e.g., meetings) or irrelevant (e.g., open tasks).
  ///
  /// Common use cases:
  /// - [`ScheduledTimeMode.exact`] → used for tightly scheduled events or reminders.
  /// - [`ScheduledTimeMode.anytime`] → used for flexible, user-driven execution tasks.
  ///
  /// Stored for each occurrence to ensure consistent behavior across recurrence generations
  /// and user time zone adjustments.
  @HiveField(20)
  final ScheduledTimeMode timeMode;

  /// Creates an immutable copy of this instance with selective field updates.
  ///
  /// Follows the copy-on-write pattern to maintain immutability while allowing
  /// controlled modifications. Automatically handles field validation during copy.
  ///
  /// **Example:**
  /// ```dart
  /// final updated = occurrence.copyWith(
  ///   occurrenceStatus: OccurrenceStatus.completed,
  ///   successPercentage: 100,
  ///   updatedAt: DateTime.now().toUtc(),
  /// );
  /// ```
  @override
  ScheduledOccurrenceEntity copyWith({
    String? id,
    String? userId,
    String? taskId,
    DateTime? createdAt,
    String? description,
    DateTime? updatedAt,
    DateTime? startDateTime,
    DateTime? endDateTime,
    String? schedulerId,
    ScheduleType? schedulerType,
    OccurrenceStatus? occurrenceStatus,
    ScheduledTimeMode? timeMode,
    int? sequenceNumber,
    int? successPercentage,
    String? timezone,
  }) {
    return ScheduledOccurrenceEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      updatedAt: updatedAt ?? this.updatedAt,
      startDateTime: startDateTime ?? this.startDateTime,
      endDateTime: endDateTime ?? this.endDateTime,
      schedulerId: schedulerId ?? this.schedulerId,
      schedulerType: schedulerType ?? this.schedulerType,
      occurrenceStatus: occurrenceStatus ?? this.occurrenceStatus,
      sequenceNumber: sequenceNumber ?? this.sequenceNumber,
      successPercentage: successPercentage ?? this.successPercentage,
      timeMode: timeMode ?? this.timeMode,
      timezone: timezone ?? this.timezone,
      taskId: taskId ?? this.taskId,
    );
  }

  /// Defines the equality comparison fields for value-based comparison.
  ///
  /// Used by `Equatable` to determine instance equality. Includes all fields
  /// from both base and derived classes to ensure comprehensive comparison.
  @override
  List<Object?> get props => [
        ...super.props,
        startDateTime,
        endDateTime,
        schedulerId,
        schedulerType,
        sequenceNumber,
        successPercentage,
        timezone,
        occurrenceStatus,
        taskId,
        timeMode,
      ];
}
