import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';

class DateRangeUI extends BaseUIModel {
  DateRangeUI({
    this.startAt,
    this.endAt,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.userId,
  });

  factory DateRangeUI.fromEntity({
    required DateRangeEntity entity,
    String? userId,
  }) =>
      DateRangeUI(
        id: entity.id,
        startAt: entity.start,
        endAt: entity.end,
        userId: userId,
      );

  final DateTime? startAt;
  final DateTime? endAt;

  @override
  DateRangeUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    DateTime? startAt,
    DateTime? endAt,
  }) =>
      DateRangeUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        userId: userId ?? this.userId,
      );
}
