import 'package:zamaan/core/extensions/string_to_sentence_case_extension.dart';

enum TaskStatus {
  scheduled,
  inProgress,
  paused,
  completed,
  overdue,
  failed,
  canceled;

  /// Converts a string name to a [TaskStatus] enum value.
  ///
  /// Throws a [FormatException] if the name does not match any status.
  static TaskStatus fromName(String name) {
    switch (name.toLowerCase()) {
      case 'scheduled':
        return TaskStatus.scheduled;
      case 'inprogress': // Fixed case for consistency
        return TaskStatus.inProgress;
      case 'paused':
        return TaskStatus.paused;
      case 'completed':
        return TaskStatus.completed;
      case 'overdue':
        return TaskStatus.overdue;
      case 'canceled':
        return TaskStatus.canceled;
      case 'failed':
        return TaskStatus.failed;
      default:
        throw FormatException('Invalid TaskActivityStatus name: $name');
    }
  }

  /// Checks if the task is currently active (in progress or paused).
  bool get isActive => this == TaskStatus.inProgress || this == TaskStatus.paused;

  /// Checks if the task is completed or canceled.
  bool get isFinalized => this == TaskStatus.completed || this == TaskStatus.canceled;

  /// Returns a user-friendly string representation of the status.
  String get displayName {
    switch (this) {
      case TaskStatus.scheduled:
        return _toString(TaskStatus.scheduled);
      case TaskStatus.inProgress:
        return _toString(TaskStatus.inProgress);
      case TaskStatus.paused:
        return _toString(TaskStatus.paused);
      case TaskStatus.completed:
        return _toString(TaskStatus.completed);
      case TaskStatus.overdue:
        return _toString(TaskStatus.overdue);
      case TaskStatus.canceled:
        return _toString(TaskStatus.canceled);
      case TaskStatus.failed:
        return _toString(TaskStatus.failed);
    }
  }

  static String _toString(TaskStatus status) => status.name.toSentenceCase();
}

