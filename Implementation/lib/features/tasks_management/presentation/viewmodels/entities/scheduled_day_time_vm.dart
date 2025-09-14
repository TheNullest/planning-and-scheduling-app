// import 'package:zamaan/domain/enums/hive/day_type.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/time_range_vm.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class ScheduledDayTimeVM extends BaseViewModel {
//   ScheduledDayTimeVM({
//     required this.dayType,
//     required this.dayLabel,
//     required this.canRepeat,
//     required this.scheduledTimes,
//     required this.enforceScheduleBounds,
//     required this.taskId,
//     required super.id,
//     super.description,
//     super.createdAt,
//     super.updatedAt,
//     super.userId,
//     super.entityState,
//   });

//   final DayType dayType;

//   /// String representation of either:
//   /// - Weekday name (e.g., "sunday") when [dayType] = `DayType.weekDay`.
//   /// - Day of the month (e.g., "15") when [dayType] = `DayType.monthDay`.
//   final String dayLabel;
//   final bool canRepeat;
//   final List<TimeRangeVM> scheduledTimes;
//   final bool enforceScheduleBounds;
//   final String taskId;

//   @override
//   BaseViewModel copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? userId,
//     String? taskId,
//     DayType? dayType,
//     String? dayLabel,
//     List<TimeRangeVM>? scheduledTimes,
//     bool? enforceScheduleBounds,
//     bool? canRepeat,
//   }) =>
//       ScheduledDayTimeVM(
//         id: id ?? this.id,
//         taskId: taskId ?? this.taskId,
//         description: description ?? this.description,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         userId: userId ?? this.userId,
//         scheduledTimes: scheduledTimes ?? List.from(this.scheduledTimes),
//         enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
//         dayType: dayType ?? this.dayType,
//         dayLabel: dayLabel ?? this.dayLabel,
//         canRepeat: canRepeat ?? this.canRepeat,
//       );
// }
