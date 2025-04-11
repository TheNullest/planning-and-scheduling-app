enum TaskActivityStatus {
  scheduled,
  inProgress,
  paused,
  completed,
  overdue,
  canceled;

  /// Converts a string name to a [TaskActivityStatus] enum value.
  ///
  /// Throws a [FormatException] if the name does not match any status.
  static TaskActivityStatus fromName(String name) {
    switch (name.toLowerCase()) {
      case 'scheduled':
        return TaskActivityStatus.scheduled;
      case 'inprogress': // Fixed case for consistency
        return TaskActivityStatus.inProgress;
      case 'paused':
        return TaskActivityStatus.paused;
      case 'completed':
        return TaskActivityStatus.completed;
      case 'overdue':
        return TaskActivityStatus.overdue;
      case 'canceled':
        return TaskActivityStatus.canceled;
      default:
        throw FormatException('Invalid TaskActivityStatus name: $name');
    }
  }

  /// Checks if the task is currently active (in progress or paused).
  bool get isActive => this == TaskActivityStatus.inProgress || this == TaskActivityStatus.paused;

  /// Checks if the task is completed or canceled.
  bool get isFinalized =>
      this == TaskActivityStatus.completed || this == TaskActivityStatus.canceled;

  /// Returns a user-friendly string representation of the status.
  String get displayName {
    switch (this) {
      case TaskActivityStatus.scheduled:
        return 'Scheduled';
      case TaskActivityStatus.inProgress:
        return 'In Progress';
      case TaskActivityStatus.paused:
        return 'Paused';
      case TaskActivityStatus.completed:
        return 'Completed';
      case TaskActivityStatus.overdue:
        return 'Overdue';
      case TaskActivityStatus.canceled:
        return 'Canceled';
    }
  }
}
