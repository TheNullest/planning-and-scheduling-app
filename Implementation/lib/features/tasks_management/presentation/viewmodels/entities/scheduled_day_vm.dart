// import 'package:zamaan/domain/enums/hive/day_type.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/time_range_vm.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class ScheduledDayVM extends BaseViewModel {
//   ScheduledDayVM({
//     required this.dayType,
//     required this.dayValue,
//     required this.canRepeat,
//     required this.scheduledTimes,
//     required this.enforceScheduleBounds,
//     required this.scheduleConstraintId,
//     super.id,
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
//   final String dayValue;
//   final bool canRepeat;
//   final List<TimeRangeVM> scheduledTimes;
//   final bool enforceScheduleBounds;
//   final String scheduleConstraintId;

//   @override
//   BaseViewModel copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? userId,
//     String? scheduleConstraintId,
//     DayType? dayType,
//     String? dayValue,
//     List<TimeRangeVM>? scheduledTimes,
//     bool? enforceScheduleBounds,
//     bool? canRepeat,
//   }) =>
//       ScheduledDayVM(
//         id: id ?? this.id,
//         scheduleConstraintId: scheduleConstraintId ?? this.scheduleConstraintId,
//         description: description ?? this.description,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         userId: userId ?? this.userId,
//         scheduledTimes: scheduledTimes ?? List.from(this.scheduledTimes),
//         enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
//         dayType: dayType ?? this.dayType,
//         dayValue: dayValue ?? this.dayValue,
//         canRepeat: canRepeat ?? this.canRepeat,
//       );
// }
