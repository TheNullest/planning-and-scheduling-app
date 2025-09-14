// import 'package:flutter/material.dart';
// import 'package:zamaan/core/extensions/int.dart';
// import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class TimeRangeVM extends BaseViewModel {
//   TimeRangeVM({
//     required this.startTime,
//     required this.endTime,
//     required this.parentId,
//     required super.id,
//     super.description,
//     super.createdAt,
//     super.updatedAt,
//     super.userId,
//     super.entityState,
//   });

//   factory TimeRangeVM.fromEntity({
//     required TimeRangeEntity entity,
//   }) =>
//       TimeRangeVM(
//         id: entity.id,
//         startTime: entity.start.toDayTime(),
//         endTime: entity.end.toDayTime(),
//         userId: entity.userId,
//         parentId: entity.parentId,
//       );

//   final TimeOfDay startTime;
//   final TimeOfDay endTime;
//   final String parentId;

//   @override
//   TimeRangeVM copyWith({
//     String? id,
//     String? description,
//     String? parentId,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? userId,
//     TimeOfDay? startTime,
//     TimeOfDay? endTime,
//   }) =>
//       TimeRangeVM(
//         id: id ?? this.id,
//         description: description ?? this.description,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         startTime: startTime ?? this.startTime,
//         endTime: endTime ?? this.endTime,
//         userId: userId ?? this.userId,
//         parentId: parentId ?? this.parentId,
//       );
// }
