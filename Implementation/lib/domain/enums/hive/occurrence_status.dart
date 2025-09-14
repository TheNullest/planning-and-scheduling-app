import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

part 'occurrence_status.g.dart';

/// Represents the status of a scheduled occurrence with Persian translations for VM display.
///
/// This enum tracks the lifecycle state of scheduled task occurrences, including
/// scheduled, active, completed, and various exception states. It includes functionality
/// to retrieve values based on name or index with proper localization support.
///
/// **Status Lifecycle:**
/// - **Scheduled**: scheduled → inProgress → completed
/// - **Exceptions**: cancelled, missed, skipped, failed
///
/// **Example Usage:**
/// ```dart
/// print(OccurrenceStatus.scheduled.name);          // Output: "Scheduled"
/// print(OccurrenceStatus.scheduled.nameInPersian); // Output: "برنامه‌ریزی شده"
/// print(OccurrenceStatus.fromName("inProgress"));  // Output: OccurrenceStatus.inProgress
/// print(OccurrenceStatus.fromIndex(2, inPersian: true)); // Output: "در حال انجام"
/// ```
@HiveType(typeId: EnumHiveTypeIds.occurrenceStatus)
enum OccurrenceStatus {
  /// The occurrence is scheduled for future execution.
  @HiveField(0)
  scheduled('برنامه‌ریزی شده'),

  /// The occurrence is currently active and in progress.
  @HiveField(1)
  inProgress('در حال انجام'),

  /// The occurrence has been successfully completed.
  @HiveField(2)
  completed('تکمیل شده'),

  /// The occurrence was manually cancelled before starting.
  @HiveField(3)
  cancelled('لغو شده'),

  /// The occurrence passed its end time without being completed.
  @HiveField(4)
  missed('از دست رفته'),

  /// The occurrence was explicitly skipped by the user.
  @HiveField(5)
  skipped('رد شده'),

  /// The occurrence was attempted but failed to complete properly.
  @HiveField(6)
  failed('ناموفق');

  /// Constructs an [OccurrenceStatus] with its Persian translation.
  const OccurrenceStatus(this._inPersian);

  /// The Persian representation used for VM display.
  final String _inPersian;

  // ==================== STATIC METHODS ====================

  /// Retrieves an [OccurrenceStatus] by its English name.
  /// Comparison is case-insensitive and supports both camelCase and snake_case.
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.fromName("inProgress")); // Output: OccurrenceStatus.inProgress
  /// print(OccurrenceStatus.fromName("in_progress")); // Output: OccurrenceStatus.inProgress
  /// ```
  static OccurrenceStatus fromName(String name) {
    final normalizedName = name.toLowerCase().replaceAll('_', '');
    return OccurrenceStatus.values.firstWhere(
      (e) => e.name.toLowerCase().replaceAll('_', '') == normalizedName,
      orElse: () => throw ArgumentError('The OccurrenceStatus "$name" is not defined.'),
    );
  }

  /// Retrieves either the English or Persian name using its index.
  /// Throws an exception if the index is invalid.
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.fromIndex(1));          // Output: "In Progress"
  /// print(OccurrenceStatus.fromIndex(1, inPersian: true)); // Output: "در حال انجام"
  /// ```
  static String fromIndex(int index, {bool inPersian = false}) {
    if (index < 0 || index >= OccurrenceStatus.values.length) {
      throw RangeError.index(index, OccurrenceStatus.values, 'index',
          'The OccurrenceStatus index $index is not valid. Valid range: 0-${OccurrenceStatus.values.length - 1}');
    }
    final item = OccurrenceStatus.values[index];
    return inPersian ? item._inPersian : item.displayName;
  }

  /// Returns a list of all status values that represent final states (cannot be changed).
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.finalStates.contains(OccurrenceStatus.completed)); // true
  /// ```
  static List<OccurrenceStatus> get finalStates => [
        OccurrenceStatus.completed,
        OccurrenceStatus.cancelled,
        OccurrenceStatus.missed,
        OccurrenceStatus.skipped,
        OccurrenceStatus.failed,
      ];

  /// Returns a list of all status values that represent active/actionable states.
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.actionableStates.contains(OccurrenceStatus.scheduled)); // true
  /// ```
  static List<OccurrenceStatus> get actionableStates => [
        OccurrenceStatus.scheduled,
        OccurrenceStatus.inProgress,
      ];

  // ==================== INSTANCE METHODS & GETTERS ====================

  /// Returns the English display name with proper capitalization.
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.inProgress.displayName); // Output: "In Progress"
  /// ```
  String get displayName => toString().split('.').last.toSentenceCase();

  /// Returns the Persian name for VM display.
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.completed.nameInPersian); // Output: "تکمیل شده"
  /// ```
  String get nameInPersian => _inPersian;

  /// Checks if this status represents a final state (cannot be changed).
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.completed.isFinal); // true
  /// print(OccurrenceStatus.scheduled.isFinal); // false
  /// ```
  bool get isFinal => finalStates.contains(this);

  /// Checks if this status represents an actionable state (can be acted upon).
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.scheduled.isActionable); // true
  /// print(OccurrenceStatus.completed.isActionable); // false
  /// ```
  bool get isActionable => actionableStates.contains(this);

  /// Checks if this status represents a successful completion.
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.completed.isSuccessful); // true
  /// print(OccurrenceStatus.failed.isSuccessful);    // false
  /// ```
  bool get isSuccessful => this == OccurrenceStatus.completed;

  /// Checks if this status represents an unsuccessful outcome.
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.failed.isUnsuccessful);    // true
  /// print(OccurrenceStatus.missed.isUnsuccessful);    // true
  /// print(OccurrenceStatus.completed.isUnsuccessful); // false
  /// ```
  bool get isUnsuccessful => [
        OccurrenceStatus.cancelled,
        OccurrenceStatus.missed,
        OccurrenceStatus.skipped,
        OccurrenceStatus.failed,
      ].contains(this);

  /// Returns the appropriate icon name for this status (for UI purposes).
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.completed.iconName); // "check_circle"
  /// print(OccurrenceStatus.failed.iconName);    // "error"
  /// ```
  String get iconName {
    switch (this) {
      case OccurrenceStatus.scheduled:
        return 'schedule';
      case OccurrenceStatus.inProgress:
        return 'play_circle';
      case OccurrenceStatus.completed:
        return 'check_circle';
      case OccurrenceStatus.cancelled:
        return 'cancel';
      case OccurrenceStatus.missed:
        return 'watch_later';
      case OccurrenceStatus.skipped:
        return 'next_plan';
      case OccurrenceStatus.failed:
        return 'error';
    }
  }

  /// Returns a descriptive color name for this status (for UI purposes).
  ///
  /// **Example:**
  /// ```dart
  /// print(OccurrenceStatus.completed.colorName); // "success"
  /// print(OccurrenceStatus.failed.colorName);    // "error"
  /// ```
  String get colorName {
    switch (this) {
      case OccurrenceStatus.scheduled:
        return 'primary';
      case OccurrenceStatus.inProgress:
        return 'info';
      case OccurrenceStatus.completed:
        return 'success';
      case OccurrenceStatus.cancelled:
      case OccurrenceStatus.skipped:
        return 'warning';
      case OccurrenceStatus.missed:
      case OccurrenceStatus.failed:
        return 'error';
    }
  }

  @override
  String toString() => displayName;
}
