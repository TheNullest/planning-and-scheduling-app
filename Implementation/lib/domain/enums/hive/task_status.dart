import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/core/extensions/string.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';

part 'task_status.g.dart';

/// Represents the different statuses a task can have, with Persian translations.
@HiveType(typeId: EnumHiveTypeIds.taskStatus)
enum TaskStatus {
  @HiveField(0)
  inProgress('در حال اجرا'),

  @HiveField(1)
  paused('متوقف شده'),

  @HiveField(2)
  done('انجام شده'),

  @HiveField(3)
  overdue('عقب افتاده'),

  @HiveField(4)
  doneLate('دیر انجام شده'),

  @HiveField(5)
  failed('شکست خورده'),

  @HiveField(6)
  cancelled('لغو شده'),

  @HiveField(7)
  scheduled('برنامه ریزی شده'),

  @HiveField(8)
  pending('در انتظار');

  /// Persian equivalent used for VM display.
  const TaskStatus(this._inPersian);
  final String _inPersian;

  /// Converts a string name (case-insensitive) to a [TaskStatus] enum value.
  /// Matches common variations like 'inprogress'.
  ///
  /// Throws a [FormatException] if the name does not match any status.
  static TaskStatus fromName(String name) {
    // Using lowercase for case-insensitive matching
    // We match against the raw enum name derived from toString(),
    // because the `name` getter now adds spaces ("In Progress").
    final lowerCaseName = name.toLowerCase().replaceAll(' ', ''); // Normalize input
    return TaskStatus.values.firstWhere(
      (e) => e.toString().split('.').last.toLowerCase() == lowerCaseName,
      orElse: () => throw FormatException('Invalid TaskStatus name: $name'),
    );
  }

  /// Retrieves either the English (Sentence Case) or Persian name using its index.
  /// Throws an exception if the index is invalid.
  static String fromIndex(int index, {bool usePersianName = false}) {
    if (index < 0 || index >= TaskStatus.values.length) {
      throw Exception('The TaskStatus index $index is not valid.');
    }
    final item = TaskStatus.values[index];
    return usePersianName ? item._inPersian : item.name;
  }

  /// Checks if the task is currently active (in progress or paused).
  bool get isActive => this == TaskStatus.inProgress || this == TaskStatus.paused;

  /// Checks if the task has reached a final state (completed or canceled).
  bool get isFinalized => this == TaskStatus.done || this == TaskStatus.cancelled;

  /// Returns a user-friendly, sentence-cased string representation of the status in English.
  /// Example: `TaskStatus.inProgress.name` -> "In progress"
  String get name {
    // Corrected implementation: Get raw enum name and apply sentence case extension.
    return toString().split('.').last.toSentenceCase();
  }

  /// Returns the Persian name for VM display.
  String get nameInPersian => _inPersian;
}
