// import 'package:zamaan/domain/enums/enums.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/date_range_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/time_range_vm.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class ScheduleConstraintVM extends BaseViewModel {
//   ScheduleConstraintVM({
//     required this.startAt,
//     required this.endAt,
//     required this.timeExceptions,
//     required this.dateExceptions,
//     required this.monthDayExceptions,
//     required this.weekDayExceptions,
//     required this.enforceScheduleBounds,
//     required this.taskId,
//     super.id,
//     super.description,
//     super.createdAt,
//     super.updatedAt,
//     super.userId,
//     super.entityState,
//   });

//   final DateTime? startAt;
//   final DateTime? endAt;
//   final List<TimeRangeVM> timeExceptions;
//   final List<DateRangeVM> dateExceptions;
//   final List<int> monthDayExceptions;
//   final List<WeekDay> weekDayExceptions;
//   final bool enforceScheduleBounds;
//   final String taskId;

//   @override
//   ScheduleConstraintVM copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     DateTime? startAt,
//     DateTime? endAt,
//     String? userId,
//     String? taskId,
//     List<WeekDay>? weekDayExceptions,
//     List<int>? monthDayExceptions,
//     List<TimeRangeVM>? scheduledTimes,
//     List<TimeRangeVM>? timeExceptions,
//     List<DateRangeVM>? dateExceptions,
//     bool? enforceScheduleBounds,
//   }) {
//     return ScheduleConstraintVM(
//       id: id ?? this.id,
//       description: description ?? this.description,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       endAt: endAt ?? this.endAt,
//       userId: userId ?? this.userId,
//       taskId: taskId ?? this.taskId,
//       startAt: startAt ?? this.startAt,
//       weekDayExceptions: weekDayExceptions ?? List.from(this.weekDayExceptions),
//       monthDayExceptions: monthDayExceptions ?? List.from(this.monthDayExceptions),
//       timeExceptions: timeExceptions ?? List.from(this.timeExceptions),
//       dateExceptions: dateExceptions ?? List.from(this.dateExceptions),
//       enforceScheduleBounds: enforceScheduleBounds ?? this.enforceScheduleBounds,
//     );
//   }
// }
