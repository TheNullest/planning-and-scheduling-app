import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';

part 'time_range_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.timeRange) // Unique Type ID for Hive
class TimeRangeHiveModel extends TimeRangeEntity {
  TimeRangeHiveModel({
    required super.id,
    required super.userId,
    required super.createdAt,
    required super.parentId,
    super.end,
    super.start,
    super.updatedAt,
  });

  TimeRangeEntity toEntity() {
    return TimeRangeEntity(
      id: id,
      start: start,
      end: end,
      createdAt: createdAt,
      userId: userId,
      parentId: parentId,
    );
  }
}
