part of 'task_coordinators_manager.dart';

// ---------------------------------------------------------------------------
// Single-item operations (including categories, tags, and goals)
// ---------------------------------------------------------------------------
extension TaskCoordinatorsManagerSingleCrudOps on TaskCoordinatorsManager {
  // ── SubTasks ─────────────────────────────────────────────
  void addSubTask(String taskId, SubTaskEntity item) => coordinators[taskId]?.addSubTask(item);
  void removeSubTask(String taskId, String id) => coordinators[taskId]?.removeSubTask(id);
  void updateSubTask(String taskId, SubTaskEntity item) =>
      coordinators[taskId]?.updateSubTask(item);

  // ── ScheduledDayTimes ──────────────────────────────────
  void addScheduledDayTime(String taskId, ScheduledDayTimeEntity item) =>
      coordinators[taskId]?.addScheduledDayTime(item);
  void removeScheduledDayTime(String taskId, String id) =>
      coordinators[taskId]?.removeScheduledDayTime(id);
  void updateScheduledDayTime(String taskId, ScheduledDayTimeEntity item) =>
      coordinators[taskId]?.updateScheduledDayTime(item);

  // ── ScheduledIntervals ─────────────────────────────────
  void addScheduledInterval(String taskId, ScheduledIntervalEntity item) =>
      coordinators[taskId]?.addScheduledInterval(item);
  void removeScheduledInterval(String taskId, String id) =>
      coordinators[taskId]?.removeScheduledInterval(id);
  void updateScheduledInterval(String taskId, ScheduledIntervalEntity item) =>
      coordinators[taskId]?.updateScheduledInterval(item);

  // ── ScheduledFixDateTimes ──────────────────────────────
  void addScheduledFixDateTime(String taskId, ScheduledOccurrenceEntity item) =>
      coordinators[taskId]?.addScheduledFixDateTime(item);
  void removeScheduledFixDateTime(String taskId, String id) =>
      coordinators[taskId]?.removeScheduledFixDateTime(id);
  void updateScheduledFixDateTime(String taskId, ScheduledOccurrenceEntity item) =>
      coordinators[taskId]?.updateScheduledFixDateTime(item);

  // ── Goals ──────────────────────────────────────────────
  void addGoal(String taskId, GoalEntity item) => coordinators[taskId]?.addGoal(item);
  void removeGoal(String taskId, String id) => coordinators[taskId]?.removeGoal(id);
  void updateGoal(String taskId, GoalEntity item) => coordinators[taskId]?.updateGoal(item);
}
