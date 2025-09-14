// import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class DateRangeVM extends BaseViewModel {
//   DateRangeVM({
//     required this.parentId,
//     this.startTime,
//     this.endTime,
//     required super.id,
//     super.description,
//     super.createdAt,
//     super.updatedAt,
//     super.userId,
//     super.entityState,
//   });

//   factory DateRangeVM.fromEntity({
//     required DateRangeEntity entity,
//   }) =>
//       DateRangeVM(
//         id: entity.id,
//         startTime: entity.start,
//         endTime: entity.end,
//         userId: entity.userId,
//         parentId: entity.parentId,
//       );

//   final DateTime? startTime;
//   final DateTime? endTime;
//   final String parentId;

//   @override
//   DateRangeVM copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? userId,
//     String? parentId,
//     DateTime? startTime,
//     DateTime? endTime,
//   }) =>
//       DateRangeVM(
//         id: id ?? this.id,
//         description: description ?? this.description,
//         parentId: parentId ?? this.parentId,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         startTime: startTime ?? this.startTime,
//         endTime: endTime ?? this.endTime,
//         userId: userId ?? this.userId,
//       );
// }
