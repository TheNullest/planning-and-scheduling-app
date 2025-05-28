// import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
// import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

// class DateRangeVM extends BaseViewModel {
//   DateRangeVM({
//     required this.parentId,
//     this.startAt,
//     this.endAt,
//     super.id,
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
//         startAt: entity.start,
//         endAt: entity.end,
//         userId: entity.userId,
//         parentId: entity.parentId,
//       );

//   final DateTime? startAt;
//   final DateTime? endAt;
//   final String parentId;

//   @override
//   DateRangeVM copyWith({
//     String? id,
//     String? description,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? userId,
//     String? parentId,
//     DateTime? startAt,
//     DateTime? endAt,
//   }) =>
//       DateRangeVM(
//         id: id ?? this.id,
//         description: description ?? this.description,
//         parentId: parentId ?? this.parentId,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         startAt: startAt ?? this.startAt,
//         endAt: endAt ?? this.endAt,
//         userId: userId ?? this.userId,
//       );
// }
