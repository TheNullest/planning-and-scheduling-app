import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/int.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/presentation_shared/models/entities/base_vm.dart';

class TimeRangeVM extends BaseViewModel {
  TimeRangeVM({
    required this.startAt,
    required this.endAt,
    required this.parentId,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
    super.entityState,
  });

  factory TimeRangeVM.fromEntity({
    required TimeRangeEntity entity,
  }) =>
      TimeRangeVM(
        id: entity.id,
        startAt: entity.start.toDayTime(),
        endAt: entity.end.toDayTime(),
        userId: entity.userId,
        parentId: entity.parentId,
      );

  final TimeOfDay startAt;
  final TimeOfDay endAt;
  final String parentId;

  @override
  TimeRangeVM copyWith({
    String? id,
    String? description,
    String? parentId,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    TimeOfDay? startAt,
    TimeOfDay? endAt,
  }) =>
      TimeRangeVM(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        userId: userId ?? this.userId,
        parentId: parentId ?? this.parentId,
      );
}
