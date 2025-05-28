// import 'package:flutter/widgets.dart';
// import 'package:zamaan/domain/enums/enums.dart';
// import 'package:zamaan/domain/enums/vm_entity_state.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/goal_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/sub_task_upsert_vm.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class TaskVM extends BaseViewModel {
//   TaskVM({
//     required this.title,
//     required this.color,
//     required this.icon,
//     required this.priority,
//     required this.categoryIds,
//     required this.fixedTagIds,
//     required this.totalSpentTime,
//     required this.subTasks,
//     required this.goal,
//     required this.archived,
//     required this.taskStatus,
//     required this.scheduleConstraintId,
//     required this.scheduledDayIds,
//     required this.scheduledIntervalIds,
//     super.id,
//     super.description,
//     super.createdAt,
//     super.updatedAt,
//     super.userId,
//     super.entityState,
//   });

//   final String title;
//   final Color color;
//   final IconData icon;
//   final Priority priority;
//   final List<String> categoryIds;
//   final List<String> fixedTagIds;
//   final Duration totalSpentTime;
//   final List<SubTaskUpsertVM> subTasks;
//   final GoalVM? goal;
//   final bool archived;
//   final TaskStatus taskStatus;
//   final String? scheduleConstraintId;
//   final List<String> scheduledDayIds;
//   final List<String> scheduledIntervalIds;

//   @override
//   TaskVM copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? title,
//     List<String>? categoryIds,
//     List<String>? fixedTagIds,
//     Color? color,
//     IconData? icon,
//     Priority? priority,
//     Duration? totalSpentTime,
//     List<SubTaskUpsertVM>? subTasks,
//     GoalVM? goal,
//     String? userId,
//     bool? archived,
//     VMEntityState? entityState,
//     TaskStatus? taskStatus,
//     String? scheduleConstraintId,
//     List<String>? scheduledDayIds,
//     List<String>? scheduledIntervalIds,
//   }) {
//     return TaskVM(
//       id: id ?? this.id,
//       description: description ?? this.description,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       title: title ?? this.title,
//       categoryIds: List.unmodifiable(categoryIds ?? this.categoryIds),
//       fixedTagIds: List.unmodifiable(fixedTagIds ?? this.fixedTagIds),
//       color: color ?? this.color,
//       icon: icon ?? this.icon,
//       priority: priority ?? this.priority,
//       totalSpentTime: totalSpentTime ?? this.totalSpentTime,
//       subTasks: List.unmodifiable(subTasks ?? this.subTasks),
//       goal: goal ?? this.goal,
//       userId: userId ?? this.userId,
//       archived: archived ?? this.archived,
//       entityState: entityState ?? this.entityState,
//       taskStatus: taskStatus ?? this.taskStatus,
//       scheduleConstraintId: scheduleConstraintId ?? this.scheduleConstraintId,
//       scheduledDayIds: scheduledDayIds ?? List.from(this.scheduledDayIds),
//       scheduledIntervalIds: scheduledIntervalIds ?? List.from(this.scheduledIntervalIds),
//     );
//   }
// }
