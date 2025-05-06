import 'package:zamaan/domain/aggregates/schedule_constraint_aggregate.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/features/tasks_management/presentation/models/schedule_constraint_vm.dart';
import 'package:zamaan/presentation_shared/mappers/date_range_vm_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/time_range_vm_mapper.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

/// Maps between `ScheduleConstraintVM` and `ScheduleConstraintAggregate`.
///
/// This mapper is responsible for transforming VM models into domain entities
/// and vice versa, ensuring proper mapping of exception times and dates.
class ScheduleConstraintVMMapper
    extends ViewModelMapper<ScheduleConstraintVM, ScheduleConstraintEntity> {
  /// Converts a [ScheduleConstraintVM] model into a [ScheduleConstraintAggregate] entity.
  ///
  /// This transformation ensures:
  /// - Schedule constraint attributes are mapped properly.
  /// - Exception lists are converted from VM models into domain entities.
  /// - Exception time and date IDs are extracted from the VM model.
  ///
  /// **Example Usage:**
  /// ```dart
  /// final uiModel = ScheduleConstraintVM(
  ///   id: "schedule_001",
  ///   userId: "user_001",
  ///   createdAt: DateTime.now(),
  ///   description: "Schedule for weekly meetings",
  ///   taskId: "task_123",
  ///   enforceScheduleBounds: true,
  ///   exceptionWeekDays: [WeekDay.monday, WeekDay.friday],
  ///   exceptionMonthDays: [15, 20],
  ///   exceptionDates: [
  ///     DateRangeVM(id: "date_001", start: DateTime(2025, 5, 1), end: DateTime(2025, 5, 3)),
  ///     DateRangeVM(id: "date_002", start: DateTime(2025, 6, 10), end: DateTime(2025, 6, 12)),
  ///   ],
  ///   exceptionTimes: [
  ///     TimeRangeVM(id: "time_001", start: DateTime(2025, 5, 1, 9, 0), end: DateTime(2025, 5, 1, 12, 0)),
  ///     TimeRangeVM(id: "time_002", start: DateTime(2025, 5, 3, 14, 0), end: DateTime(2025, 5, 3, 16, 0)),
  ///   ],
  /// );
  ///
  /// final entity = ScheduleConstraintVMMapper().toEntity(uiModel);
  /// ```
  @override
  ScheduleConstraintEntity toEntity(ScheduleConstraintVM uiModel) => ScheduleConstraintEntity(
        id: uiModel.id!,
        userId: uiModel.userId!,
        createdAt: uiModel.createdAt!,
        description: uiModel.description,
        taskId: uiModel.taskId,
        enforceScheduleBounds: uiModel.enforceScheduleBounds,
        exceptionWeekDays: uiModel.exceptionWeekDays,
        exceptionMonthDays: uiModel.exceptionMonthDays,
        // Extracts exception date IDs from the list of `DateRangeVM` objects.
        exceptionDateIds: uiModel.exceptionDates.map((item) => item.id!).toList(),
        // Extracts exception time IDs from the list of `TimeRangeVM` objects.
        exceptionTimeIds: uiModel.exceptionTimes.map((item) => item.id!).toList(),
      );

  /// Converts a [ScheduleConstraintAggregate] entity into a [ScheduleConstraintVM] model.
  ///
  /// This transformation ensures:
  /// - Schedule constraint attributes are preserved.
  /// - Exception lists are converted from domain entities into VM models.
  ///
  /// **Example Usage:**
  /// ```dart
  /// final entity = ScheduleConstraintAggregate(
  ///   scheduleConstraint: ScheduleConstraintEntity(
  ///     id: "schedule_001",
  ///     userId: "user_001",
  ///     createdAt: DateTime.now(),
  ///     description: "Schedule for weekly meetings",
  ///     taskId: "task_123",
  ///     enforceScheduleBounds: true,
  ///     exceptionWeekDays: [WeekDay.monday, WeekDay.friday],
  ///     exceptionMonthDays: [15, 20],
  ///     exceptionDateIds: ["date_001", "date_002"],
  ///     exceptionTimeIds: ["time_001", "time_002"],
  ///   ),
  ///   exceptionDates: [
  ///     DateRangeEntity(id: "date_001", start: DateTime(2025, 5, 1), end: DateTime(2025, 5, 3)),
  ///     DateRangeEntity(id: "date_002", start: DateTime(2025, 6, 10), end: DateTime(2025, 6, 12)),
  ///   ],
  ///   exceptionTimes: [
  ///     TimeRangeEntity(id: "time_001", start: DateTime(2025, 5, 1, 9, 0), end: DateTime(2025, 5, 1, 12, 0)),
  ///     TimeRangeEntity(id: "time_002", start: DateTime(2025, 5, 3, 14, 0), end: DateTime(2025, 5, 3, 16, 0)),
  ///   ],
  /// );
  ///
  /// final uiModel = ScheduleConstraintVMMapper().toVM(entity);
  /// ```
  @override
  ScheduleConstraintVM toVM(ScheduleConstraintEntity entity, {Map<String, dynamic>? relations}) =>
      ScheduleConstraintVM(
        userId: entity.userId,
        taskId: entity.taskId,
        endAt: entity.endAt,
        startAt: entity.startAt,
        id: entity.id,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        exceptionWeekDays: entity.exceptionWeekDays,
        exceptionMonthDays: entity.exceptionMonthDays,
        enforceScheduleBounds: entity.enforceScheduleBounds,
        exceptionTimes:
            TimeRangeVMMapper().toVMList(relations!['timeRanges'] as List<TimeRangeEntity>),
        exceptionDates:
            DateRangeVMMapper().toVMList(relations['dateRanges'] as List<DateRangeEntity>),
      );

}
