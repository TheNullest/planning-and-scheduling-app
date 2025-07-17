import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';

class OnUpdatingConstraintsDateTimeExceptions {
  OnUpdatingConstraintsDateTimeExceptions(
      {required this.updatedTimeExceptions,
      required this.updatedDateExceptions,
      required this.addedTimeExceptions,
      required this.addedDateExceptions,
      required this.deletedTimeExceptions,
      required this.deletedDateExceptions});

  final List<TimeRangeEntity> updatedTimeExceptions;
  final List<DateRangeEntity> updatedDateExceptions;
  final List<TimeRangeEntity> addedTimeExceptions;
  final List<DateRangeEntity> addedDateExceptions;
  final List<String> deletedTimeExceptions;
  final List<String> deletedDateExceptions;
}
