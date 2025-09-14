// import 'package:zamaan/domain/enums/enums.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/date_range_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/time_range_vm.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class ScheduleConstraintVM extends BaseViewModel {
//   ScheduleConstraintVM({
//     required this.startTime,
//     required this.endTime,
//     required this.exceptionTimes,
//     required this.exceptionDates,
//     required this.exceptionMonthDays,
//     required this.exceptionWeekDays,
//     required this.enforceScheduleBounds,
//     required this.taskId,
//     required super.id,
//     super.description,
//     super.createdAt,
//     super.updatedAt,
//     super.userId,
//     super.entityState,
//   });

//   final DateTime? startTime;
//   final DateTime? endTime;
//   final List<TimeRangeVM> exceptionTimes;
//   final List<DateRangeVM> exceptionDates;
//   final List<int> exceptionMonthDays;
//   final List<WeekDay> exceptionWeekDays;
//   final bool enforceScheduleBounds;
//   final String taskId;

//   @override
//   ScheduleConstraintVM copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     DateTime? startTime,
//     DateTime? endTime,
//     String? userId,
//     String? taskId,
//     List<WeekDay>? exceptionWeekDays,
//     List<int>? exceptionMonthDays,
//     List<TimeRangeVM>? scheduledTimes,
//     List<TimeRangeVM>? exceptionTimes,
//     List<DateRangeVM>? exceptionDates,
//     bool? enforceScheduleBounds,
//   }) {
//     return ScheduleConstraintVM(
//       id: id ?? this.id,
//       description: description ?? this.description,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       endTime: endTime ?? this.endTime,
//       userId: userId ?? this.userId,
//       taskId: taskId ?? this.taskId,
//       startTime: startTime ?? this.startTime,
//       exceptionWeekDays: exceptionWeekDays ?? List.from(this.exceptionWeekDays),
//       exceptionMonthDays: exceptionMonthDays ?? List.from(this.exceptionMonthDays),
//       exceptionTimes: exceptionTimes ?? List.from(this.exceptionTimes),
//       exceptionDates: exceptionDates ?? List.from(this.exceptionDates),
//       enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
//     );
//   }
// }
