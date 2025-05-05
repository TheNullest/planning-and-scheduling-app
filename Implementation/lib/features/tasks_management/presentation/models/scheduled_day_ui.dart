import 'package:zamaan/domain/entities/scheduled_day.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/features/tasks_management/presentation/models/time_range_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class ScheduledDayUI extends BaseUIModel {
  ScheduledDayUI({
    required this.dayType,
    required this.dayValue,
    required this.canRepeat,
    required this.scheduledTimes,
    required this.enforceScheduleBounds,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });
  factory ScheduledDayUI.fromEntity({
    required ScheduledDayEntity entity,
    required List<TimeRangeUI> scheduledTimes,
    String? userId,
  }) =>
      ScheduledDayUI(
        dayType: entity.dayType,
        dayValue: entity.dayValue,
        canRepeat: entity.canRepeat,
        scheduledTimes: scheduledTimes,
        enforceScheduleBounds: entity.enforceScheduleBounds,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        id: entity.id,
        description: entity.description,
        userId: userId,
      );

  final DayType dayType;

  /// String representation of either:
  /// - Weekday name (e.g., "sunday") when [dayType] = `DayType.weekDay`.
  /// - Day of the month (e.g., "15") when [dayType] = `DayType.monthDay`.
  final String dayValue;
  final bool canRepeat;
  final List<TimeRangeUI> scheduledTimes;
  final bool enforceScheduleBounds;

  @override
  BaseUIModel copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    DayType? dayType,
    String? dayValue,
    List<TimeRangeUI>? scheduledTimes,
    bool? enforceScheduleBounds,
    bool? canRepeat,
  }) =>
      ScheduledDayUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        scheduledTimes: scheduledTimes ?? List.from(this.scheduledTimes),
        enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
        dayType: dayType ?? this.dayType,
        dayValue: dayValue ?? this.dayValue,
        canRepeat: canRepeat ?? this.canRepeat,
      );
}
