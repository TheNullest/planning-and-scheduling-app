import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/int.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';

part 'time_range_hive_model.g.dart';

/// Represents a time range with start & optional end time.
/// If `end` is null, it assumes an ongoing range until **now** (`TimeOfDay.now()`).
@HiveType(typeId: ClassHiveTypeIds.timeRange) // Unique Type ID for Hive

class TimeRangeHiveModel {
  TimeRangeHiveModel({required this.id, required this.start, required this.end});

  factory TimeRangeHiveModel.fromEntity(TimeRangeEntity entity) => TimeRangeHiveModel(
        id: entity.id,
        start: entity.start.toInt(),
        end: entity.end.toInt(),
      );
  @HiveField(0)
  final String id;

  @HiveField(1)
  final int start;

  @HiveField(2)
  final int end;

  TimeRangeEntity toEntity() {
    return TimeRangeEntity(
      id: id,
      start: start.toTimeOfDay(),
      end: end.toTimeOfDay(),
    );
  }

  TimeRangeHiveModel copyWith({
    String? id,
    int? start,
    int? end,
  }) {
    return (
      id: id,
      start: start,
      end: end,
    ) as TimeRangeHiveModel;
  }
}
