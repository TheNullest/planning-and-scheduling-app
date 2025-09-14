// import 'package:zamaan/domain/enums/hive/task_status.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/sub_task_activity_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/tag_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/task/task_vm.dart';

// class TaskActivityVM extends SubTaskActivityVM<TaskVM> {
//   TaskActivityVM({
//     required super.task,
//     required super.startTime,
//     required super.endTime,
//     required super.variableTags,
//     required super.status,
//     required this.subTaskActivities,
//     required super.id,
//     super.description,
//     super.createdAt,
//     super.updatedAt,
//     super.userId,
//     super.entityState,
//   });

//   final List<SubTaskActivityVM> subTaskActivities;

//   @override
//   TaskActivityVM copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     TaskVM? task,
//     List<SubTaskActivityVM>? subTaskActivities,
//     DateTime? startTime,
//     DateTime? endTime,
//     List<TagVM>? variableTags,
//     TaskStatus? status,
//     String? userId,
//   }) =>
//       TaskActivityVM(
//         id: id ?? this.id,
//         description: description ?? this.description,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         task: task ?? this.task,
//         subTaskActivities: subTaskActivities ?? this.subTaskActivities,
//         startTime: startTime ?? this.startTime,
//         endTime: endTime ?? this.endTime,
//         variableTags: variableTags ?? this.variableTags,
//         status: status ?? this.status,
//         userId: userId ?? this.userId,
//       );
// }
