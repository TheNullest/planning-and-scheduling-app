// import 'package:zamaan/domain/entities/goal.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/measurement_unit_vm.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class GoalVM extends BaseViewModel {
//   GoalVM({
//     this.minutelyTarget = 0,
//     this.hourlyTarget = 0,
//     this.dailyTarget = 0,
//     this.weeklyTarget = 0,
//     this.monthlyTarget = 0,
//     this.yearlyTarget = 0,
//     this.customMeasurementUnit,
//     super.id,
//     super.description,
//     super.createdAt,
//     super.updatedAt,
//     super.userId,
//     super.entityState,
//   });

//   factory GoalVM.fromEntity({
//     required GoalEntity entity,
//     required CustomeMeasurementUnitVM customMeasurementUnit,
//   }) =>
//       GoalVM(
//         id: entity.id,
//         description: entity.description,
//         createdAt: entity.createdAt,
//         updatedAt: entity.updatedAt,
//         userId: entity.userId,
//         customMeasurementUnit: customMeasurementUnit,
//         minutelyTarget: entity.minutelyTarget,
//         hourlyTarget: entity.hourlyTarget,
//         dailyTarget: entity.dailyTarget,
//         weeklyTarget: entity.weeklyTarget,
//         monthlyTarget: entity.monthlyTarget,
//         yearlyTarget: entity.yearlyTarget,
//       );

//   final CustomeMeasurementUnitVM? customMeasurementUnit;
//   final double minutelyTarget;
//   final double hourlyTarget;
//   final double dailyTarget;
//   final double weeklyTarget;
//   final double monthlyTarget;
//   final double yearlyTarget;

//   @override
//   GoalVM copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     CustomeMeasurementUnitVM? customeCustomeMeasurementUnit,
//     double? minutelyTarget,
//     double? hourlyTarget,
//     double? dailyTarget,
//     double? weeklyTarget,
//     double? monthlyTarget,
//     double? yearlyTarget,
//     String? userId,
//   }) =>
//       GoalVM(
//         id: id ?? this.id,
//         description: description ?? this.id,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         customMeasurementUnit: customeCustomeMeasurementUnit ?? customMeasurementUnit,
//         minutelyTarget: minutelyTarget ?? this.minutelyTarget,
//         hourlyTarget: hourlyTarget ?? this.hourlyTarget,
//         dailyTarget: dailyTarget ?? this.dailyTarget,
//         weeklyTarget: weeklyTarget ?? this.weeklyTarget,
//         monthlyTarget: monthlyTarget ?? this.monthlyTarget,
//         yearlyTarget: yearlyTarget ?? this.yearlyTarget,
//         userId: userId ?? this.userId,
//       );
// }
