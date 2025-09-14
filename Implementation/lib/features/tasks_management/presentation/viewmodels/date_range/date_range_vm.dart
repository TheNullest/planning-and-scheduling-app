import 'package:flutter/material.dart';
import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/presentation_shared/models/mixinn/list_item_state_mixin.dart';

class DateRangeVm extends ChangeNotifier with ListItemStateMixin {
  DateRangeVm({
    required this.startDate,
    required this.endDate,
    String? id,
    this.createdAt,
    this.updatedAt,
  }) : id = id ?? uuidGenerator;

  DateRangeVm.init()
      : id = uuidGenerator,
        createdAt = DateTime.now(),
        updatedAt = null,
        startDate = DateTime.now(),
        endDate = DateTime.now().add(const Duration(days: 1));

  DateRangeVm.fromDateRangeEntity(DateRangeEntity entity)
      : id = entity.id,
        createdAt = entity.createdAt,
        updatedAt = entity.updatedAt,
        startDate = entity.startDate,
        endDate = entity.endDate {
    markAsPersisted();
  }

  static List<DateRangeVm> fromDateRangeEntities(List<DateRangeEntity> entities) =>
      entities.map((item) => DateRangeVm.fromDateRangeEntity(item)).toList();

  final String id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? startDate;
  final DateTime? endDate;

  DateRangeEntity toDateRangeEntity(String parentId, String userId, String description) =>
      DateRangeEntity(
          id: id,
          parentId: parentId,
          startDate: startDate,
          endDate: endDate,
          createdAt: createdAt ?? DateTime.now(),
          userId: userId,
          updatedAt: DateTime.now(),
          description: description);

  static List<DateRangeEntity> toDateRangeEntities({
    required List<DateRangeVm> dateRangeVms,
    required String parentId,
    required String userId,
    required String description,
  }) =>
      dateRangeVms.map((item) => item.toDateRangeEntity(parentId, userId, description)).toList();

  bool equality(DateRangeVm other) {
    return startDate == other.startDate &&
        endDate == other.endDate &&
        isNewItem.value == other.isNewItem.value &&
        isSelected.value == other.isSelected.value &&
        isSoftRemoved.value == other.isSoftRemoved.value;
  }

  DateRangeVm copyWith({
    String? id,
    DateTime? startDate,
    DateTime? endDate,
    bool? allowAllDay,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool mardAsNewItem = false,
    bool mardAsModified = true,
  }) =>
      DateRangeVm(
        id: id ?? this.id,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      )
        ..isNewItem.value = mardAsNewItem
        ..isModified.value = mardAsModified;
}
