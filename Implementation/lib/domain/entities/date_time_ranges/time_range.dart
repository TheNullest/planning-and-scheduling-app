import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/extensions/int.dart';
import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';

/// A [TimeRangeEntity] represents a specific time interval within a day,
/// defined by a start and an end [Duration]. It is associated with a parent
/// entity via the [parentId] field.
///
/// The [start] must always be earlier than the [end]. If no [start] is specified,
/// it defaults to `Duration.zero` (i.e. midnight). If no [end] is provided,
/// it defaults to a value corresponding to 23:59:59.999999.
///
/// This entity extends [BaseEntityAbstraction], inheriting common properties
/// such as [id], [userId], [createdAt], and [description].
class TimeRangeEntity extends BaseEntityAbstraction {
  /// Constructs a [TimeRangeEntity].
  ///
  /// The required parameters are:
  /// - [id]: A unique identifier for this time range.
  /// - [userId]: The identifier of the user associated with this entity.
  /// - [createdAt]: The creation timestamp.
  /// - [parentId]: The identifier of the parent entity.
  ///
  /// Optional parameters:
  /// - [description] and [updatedAt] (inherited from [BaseEntityAbstraction]).
  /// - [start]: The starting time as a [Duration]. Defaults to [Duration.zero] if omitted.
  /// - [end]: The ending time as a [Duration]. Defaults to 23:59:59.999999 if omitted.
  ///
  /// Throws an [ArgumentError] if the resulting [start] is not before [end].
  TimeRangeEntity({
    required super.id,
    required super.userId,
    required super.createdAt,
    required this.parentId,
    super.description,
    super.updatedAt,
    int? start,
    int? end,
  })  : start = start ?? 0,
        end = end ?? 1439 {
    // Validate that the start time is strictly before the end time.
    if (this.start >= this.end) {
      throw ArgumentError('The start time must be before the end time.');
    }
  }

  factory TimeRangeEntity.setNewTimeRange(
      {required int start, required int end, required String userId, required String parentId}) {
    return TimeRangeEntity(
        id: uuidGenerator,
        userId: userId,
        createdAt: DateTime.now(),
        parentId: parentId,
        start: start,
        end: end);
  }

  /// The starting time of this range.
  @HiveField(11)
  final int start;

  /// The ending time of this range.
  @HiveField(12)
  final int end;

  /// The identifier of the parent to which this time range belongs.
  @HiveField(13)
  final String parentId;

  /// Returns the duration between [start] and [end].
  Duration get difference => (end - start).toDuration;

  /// Converts the [start] [Duration] to a [DateTime] on the specified [date].
  ///
  /// This method leverages the extension method `toDateTimeForDate` defined on
  /// [Duration], which creates a [DateTime] combining the date components from
  /// [date] and the time components from [start].
  DateTime startAsDateTime(DateTime date) => start.toDateTimeForDate(date);

  /// Converts the [end] [Duration] to a [DateTime] on the specified [date].
  ///
  /// This method leverages the extension method `toDateTimeForDate` defined on
  /// [Duration], which creates a [DateTime] combining the date components from
  /// [date] and the time components from [end].
  DateTime endAsDateTime(DateTime date) => end.toDateTimeForDate(date);

  /// Determines if the given [time] (expressed as a [Duration]) falls within this range.
  ///
  /// Returns `true` if [time] is equal to or after [start] and equal to or before [end];
  /// otherwise, returns `false`.
  bool overlapsWith(int time) {
    return time >= start && time <= end;
  }

  @override
  TimeRangeEntity copyWith({
    String? id,
    int? start,
    int? end,
    DateTime? createdAt,
    String? userId,
    String? parentId,
  }) =>
      TimeRangeEntity(
        id: id ?? this.id,
        start: start ?? this.start,
        end: end ?? this.end,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        parentId: parentId ?? this.parentId,
      );
}
