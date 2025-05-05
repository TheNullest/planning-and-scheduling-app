import 'package:hive/hive.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';

part 'date_time_range_hive_model.g.dart';

/// Represents a date range with start & end dates.
/// Serialized with Hive to store it inside Hive-based entities.
@HiveType(typeId: ClassHiveTypeIds.dateRange) // Unique Type ID for Hive
class DateRangeHiveModel {
  DateRangeHiveModel({
    required this.id,
    required this.start,
    required this.end,
  });

  factory DateRangeHiveModel.fromEntity(DateRangeEntity entity) => DateRangeHiveModel(
        id: entity.id,
        start: entity.start,
        end: entity.end,
      );
  @HiveField(0)
  final String id;

  /// The start date/time of the range.
  /// If null, the range is considered open-ended at the beginning.
  /// Always store the date in UTC for consistency.
  @HiveField(1)
  final DateTime? start;

  /// The end date/time of the range.
  /// If null, this implies that the range may be ongoing or unbounded.
  /// Always store the date in UTC for consistency.
  @HiveField(2)
  final DateTime? end;
}
