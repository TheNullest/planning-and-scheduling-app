import 'package:flutter/material.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class TimeRangeUI extends BaseUIModel {
  TimeRangeUI({
    required this.startAt,
    required this.endAt,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });

  final TimeOfDay startAt;
  final TimeOfDay endAt;

  @override
  TimeRangeUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    TimeOfDay? startAt,
    TimeOfDay? endAt,
  }) =>
      TimeRangeUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        userId: userId ?? this.userId,
      );
}
