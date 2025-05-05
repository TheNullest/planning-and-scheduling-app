import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/features/tasks_management/presentation/models/time_range_ui.dart';
import 'package:zamaan/presentation_shared/enums/interval_unit.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class ScheduledIntervalUI extends BaseUIModel {
  ScheduledIntervalUI({
    required this.intervalUnit,
    required this.intervalValue,
    required this.repeatCount,
    required this.scheduledTimes,
    required this.startDate,
    required this.enforceScheduleBounds,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });

  factory ScheduledIntervalUI.fromEntity({
    required ScheduledIntervalEntity entity,
    required List<TimeRangeUI> scheduledTimes,
    String? userId,
  }) =>
      ScheduledIntervalUI(
        intervalUnit: entity.intervalUnit,
        intervalValue: entity.intervalValue,
        repeatCount: entity.repeatCount,
        enforceScheduleBounds: entity.enforceScheduleBounds,
        scheduledTimes: scheduledTimes,
        userId: userId,
        id: entity.id,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        startDate: entity.startDate,
      );

  final IntervalUnit intervalUnit;
  final double intervalValue;
  final int? repeatCount;
  final List<TimeRangeUI> scheduledTimes;
  final bool enforceScheduleBounds;
  final DateTime startDate;

  ScheduledIntervalEntity toEntity() => ScheduledIntervalEntity(
        id: id ?? '',
        userId: userId ?? '',
        createdAt: createdAt ?? DateTime.now(),
        scheduleConstraintId: '',
        intervalUnit: intervalUnit,
        intervalValue: intervalValue,
        repeatCount: repeatCount,
        scheduledTimeIds: [],
        enforceScheduleBounds: enforceScheduleBounds,
        description: description,
        updatedAt: updatedAt,
        startDate: startDate,
      );

  @override
  BaseUIModel copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startDate,
    String? userId,
    IntervalUnit? intervalUnit,
    double? intervalValue,
    int? repeatCount,
    List<TimeRangeUI>? scheduledTimes,
    bool? enforceScheduleBounds,
  }) =>
      ScheduledIntervalUI(
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
      );
}
