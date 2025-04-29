import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';

part 'time_range_hive_model.g.dart';

/// Represents a time range with start & optional end time.
/// If `end` is null, it assumes an ongoing range until **now** (`TimeOfDay.now()`).
@HiveType(typeId: ClassHiveTypeIds.timeRange) // Unique Type ID for Hive

class TimeRangeHiveModel extends TimeRangeEntity {
  TimeRangeHiveModel({
    required super.id,
    required super.start,
    super.end,
  });

  factory TimeRangeHiveModel.fromEntity(TimeRangeEntity entity) => TimeRangeHiveModel(
        id: entity.id,
        start: entity.start,
        end: entity.end,
      );

  @override
  TimeRangeHiveModel copyWith({
    String? id,
    TimeOfDay? start,
    TimeOfDay? end,
  }) {
    return super.copyWith(
      id: id,
      start: start,
      end: end,
    ) as TimeRangeHiveModel;
  }
}
