import 'package:zamaan/domain/aggregates/scheduled_interval_aggregate.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/enums/hive/interval_unit.dart';
import 'package:zamaan/features/tasks_management/presentation/models/time_range_vm.dart';
import 'package:zamaan/presentation_shared/mappers/time_range_vm_mapper.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class ScheduledIntervalVM extends BaseViewModel {
  ScheduledIntervalVM({
    required this.intervalUnit,
    required this.intervalValue,
    required this.repeatCount,
    required this.scheduledTimes,
    required this.startDate,
    required this.enforceScheduleBounds,
    required this.scheduleConstraintId,
    this.consecutiveOccurrences = 1,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
    super.entityState,
  });

  factory ScheduledIntervalVM.fromEntity({
    required ScheduledIntervalAggregate entity,
  }) =>
      ScheduledIntervalVM(
        scheduleConstraintId: entity.scheduledInterval.scheduleConstraintId,
        intervalUnit: entity.scheduledInterval.intervalUnit,
        intervalValue: entity.scheduledInterval.intervalValue,
        repeatCount: entity.scheduledInterval.repeatCount,
        enforceScheduleBounds: entity.scheduledInterval.enforceScheduleBounds,
        scheduledTimes: TimeRangeVMMapper().toVMList(entity.scheduledTimes),
        userId: entity.scheduledInterval.userId,
        id: entity.scheduledInterval.id,
        description: entity.scheduledInterval.description,
        createdAt: entity.scheduledInterval.createdAt,
        updatedAt: entity.scheduledInterval.updatedAt,
        startDate: entity.scheduledInterval.startDate,
      );

  final IntervalUnit intervalUnit;
  final double intervalValue;
  final String scheduleConstraintId;
  final int? repeatCount;
  final int consecutiveOccurrences;
  final List<TimeRangeVM> scheduledTimes;
  final bool enforceScheduleBounds;
  final DateTime startDate;

  ScheduledIntervalAggregate toEntity() => ScheduledIntervalAggregate(
        scheduledInterval: ScheduledIntervalEntity(
          id: id ?? '',
          userId: userId ?? '',
          createdAt: createdAt ?? DateTime.now(),
          scheduleConstraintId: scheduleConstraintId,
          intervalUnit: intervalUnit,
          intervalValue: intervalValue,
          repeatCount: repeatCount,
          scheduledTimeIds: scheduledTimes.map((item) => item.id!).toList(),
          enforceScheduleBounds: enforceScheduleBounds,
          description: description,
          updatedAt: updatedAt,
          startDate: startDate,
          consecutiveOccurrences: consecutiveOccurrences,
        ),
        scheduledTimes: TimeRangeVMMapper().toEntityList(scheduledTimes),
      );

  @override
  BaseViewModel copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startDate,
    String? userId,
    String? scheduleConstraintId,
    IntervalUnit? intervalUnit,
    double? intervalValue,
    int? repeatCount,
    List<TimeRangeVM>? scheduledTimes,
    bool? enforceScheduleBounds,
    int? consecutiveOccurrences,
  }) =>
      ScheduledIntervalVM(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        startDate: startDate ?? this.startDate,
        intervalUnit: intervalUnit ?? this.intervalUnit,
        intervalValue: intervalValue ?? this.intervalValue,
        repeatCount: repeatCount ?? this.repeatCount,
        scheduledTimes: scheduledTimes ?? this.scheduledTimes,
        enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
        consecutiveOccurrences: consecutiveOccurrences ?? this.consecutiveOccurrences,
        scheduleConstraintId: scheduleConstraintId ?? this.scheduleConstraintId,
      );
}
