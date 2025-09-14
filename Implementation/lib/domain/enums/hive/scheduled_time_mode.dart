import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';

part 'scheduled_time_mode.g.dart';

/// Defines how a schedule determines its active time configuration.
///
/// Used across scheduling entities such as:
/// - [ScheduledDayTimeEntity]
/// - [ScheduledOccurrenceEntity] and as ScheduledFixedDate
///
/// This enum indicates **whether** a schedule runs at fixed times,
/// within flexible windows, or at any time of day.
/// It supports both English and Persian labels for display in ViewModels.
///
/// Example Usage:
/// ```dart
/// print(ScheduledTimeMode.fixed.name);          // Output: "Fixed"
/// print(ScheduledTimeMode.flexible.nameInPersian); // Output: "شناور"
/// print(ScheduledTimeMode.fromName("windowed"));  // Output: ScheduledTimeMode.windowed
/// print(ScheduledTimeMode.fromIndex(1, inPersian: true)); // Output: "شناور"
/// ```
@HiveType(typeId: EnumHiveTypeIds.scheduledTimeMode)
enum ScheduledTimeMode {
  /// The schedule has explicit start and end times.
  /// Example: 09:00–10:00.
  @HiveField(0)
  fixed('ثابت'),

  /// The schedule can occur at any time of the day (no fixed start/end).
  @HiveField(1)
  flexible('شناور'),

  /// The schedule must occur within a defined time window, but not at a fixed time.
  /// Example: Anytime between 09:00–12:00.
  @HiveField(2)
  windowed('بازه‌ای');

  /// Constructs a [ScheduledTimeMode] with its Persian label.
  const ScheduledTimeMode(this._inPersian);

  /// The Persian translation for UI/VM display.
  final String _inPersian;

  /// Retrieves a [ScheduledTimeMode] by its English name (case-insensitive).
  ///
  /// Example:
  /// ```dart
  /// print(ScheduledTimeMode.fromName("flexible")); // Output: ScheduledTimeMode.flexible
  /// ```
  static ScheduledTimeMode fromName(String name) {
    return ScheduledTimeMode.values.firstWhere(
      (e) => e.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception('The ScheduledTimeMode "$name" is not defined.'),
    );
  }

  /// Retrieves the mode’s name (English or Persian) using its index.
  /// Throws an exception if the index is invalid.
  ///
  /// Example:
  /// ```dart
  /// print(ScheduledTimeMode.fromIndex(0)); // Output: "Fixed"
  /// print(ScheduledTimeMode.fromIndex(0, inPersian: true)); // Output: "ثابت"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= ScheduledTimeMode.values.length) {
      throw Exception('The ScheduledTimeMode index $index is not valid.');
    }
    final item = ScheduledTimeMode.values[index];
    return inPersian ? item._inPersian : item.name;
  }

  /// Returns the English name in sentence case (e.g., “Flexible”).
  String get name => toString().split('.').last.toSentenceCase();

  /// Returns the Persian name for localized display.
  String get nameInPersian => _inPersian;
}
