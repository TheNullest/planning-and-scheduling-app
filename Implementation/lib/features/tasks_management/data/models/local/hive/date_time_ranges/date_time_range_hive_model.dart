import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';

part 'date_time_range_hive_model.g.dart';

/// Represents a date range with start & end dates.
/// Serialized with Hive to store it inside Hive-based entities.
@HiveType(typeId: ClassHiveTypeIds.dateRange) // Unique Type ID for Hive
class DateRangeHiveModel extends DateRangeEntity {
  DateRangeHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.parentId,
    super.start,
    super.end,
    super.description,
    super.updatedAt,
  });

  factory DateRangeHiveModel.fromEntity(DateRangeEntity entity) => DateRangeHiveModel(
        id: entity.id,
        start: entity.start,
        end: entity.end,
        createdAt: entity.createdAt,
        userId: entity.userId,
        parentId: entity.parentId,
      );
}
