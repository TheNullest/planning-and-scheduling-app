// import 'package:zamaan/domain/enums/hive/task_status.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/entities/tag_vm.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class SubTaskActivityVM<SubTaskVM> extends BaseViewModel {
//   SubTaskActivityVM({
//     required this.task,
//     required this.startTime,
//     required this.endTime,
//     required this.variableTags,
//     required this.status,
//     required super.id,
//     super.description,
//     super.createdAt,
//     super.updatedAt,
//     super.userId,
//     super.entityState,
//   });

//   final SubTaskVM task;
//   final DateTime startTime;
//   final DateTime? endTime;
//   final List<TagVM> variableTags;
//   final TaskStatus status;

//   @override
//   SubTaskActivityVM copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     SubTaskVM? task,
//     DateTime? startTime,
//     DateTime? endTime,
//     List<TagVM>? variableTags,
//     TaskStatus? status,
//     String? userId,
//   }) =>
//       SubTaskActivityVM(
//         id: id ?? this.id,
//         description: description ?? this.description,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         task: task ?? this.task,
//         startTime: startTime ?? this.startTime,
//         endTime: endTime ?? this.endTime,
//         variableTags: variableTags ?? this.variableTags,
//         status: status ?? this.status,
//         userId: userId ?? this.userId,
//       );
// }
