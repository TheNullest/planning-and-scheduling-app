part of 'task_coordinators_manager.dart';

// ---------------------------------------------------------------------------
// Attachment methods
// ---------------------------------------------------------------------------
/// Extension with helper methods to attach loaded entities to their
/// corresponding [TaskCoordinator] inside a [TaskCoordinatorsManager].
///
/// These methods assume [taskId] has been set to the **task that is
/// currently being populated**, so they automatically look up the matching
/// coordinator in [coordinators].
extension TaskCoordinatorsManagerAttachOps on TaskCoordinatorsManager {
  /// Attach recurring day-time schedule.
  void attachScheduledDayTimes(String taskId, List<ScheduledDayTimeEntity> dayTimes) {
    final coordinator = coordinators[taskId];
    if (coordinator == null) return;

    coordinator.addScheduledDayTimes(dayTimes);
  }

  /// Attach recurring interval schedule.
  void attachScheduledIntervals(String taskId, List<ScheduledIntervalEntity> intervals) {
    final coordinator = coordinators[taskId];
    if (coordinator == null) return;

    coordinator.addScheduledIntervals(intervals);
  }

  /// Attach fixed scheduled occurrences (one-off scheduled occurrences).
  void attachScheduledFixDateTimes(String taskId, List<ScheduledOccurrenceEntity> instances) {
    final coordinator = coordinators[taskId];
    if (coordinator == null) return;

    coordinator.addScheduledFixDateTimes(instances);
  }

  /// Attach goals (for the task and/or its subtasks) to the current task’s coordinator.
  void attachGoals(String taskId, List<GoalEntity> goals) {
    final coordinator = coordinators[taskId];
    if (coordinator == null) return;

    coordinator.addGoals(goals);
  }
}
