part of 'task_coordinators_manager.dart';

// ---------------------------------------------------------------------------
// Batch operations (including categories, tags, and goals)
// ---------------------------------------------------------------------------
extension TaskCoordinatorsManagerBatchCrudOps on TaskCoordinatorsManager {
  // ── SubTasks ─────────────────────────────────────────────
  void addSubTasks(String taskId, List<SubTaskEntity> items) =>
      coordinators[taskId]?.addSubTasks(items);
  void removeSubTasks(String taskId, List<String> ids) => coordinators[taskId]?.removeSubTasks(ids);
  void updateSubTasks(String taskId, List<SubTaskEntity> items) =>
      coordinators[taskId]?.updateSubTasks(items);

  // ── ScheduledDayTimes ──────────────────────────────────
  void addScheduledDayTimes(String taskId, List<ScheduledDayTimeEntity> items) =>
      coordinators[taskId]?.addScheduledDayTimes(items);
  void removeScheduledDayTimes(String taskId, List<String> ids) =>
      coordinators[taskId]?.removeScheduledDayTimes(ids);
  void updateScheduledDayTimes(String taskId, List<ScheduledDayTimeEntity> items) =>
      coordinators[taskId]?.updateScheduledDayTimes(items);

  // ── ScheduledIntervals ─────────────────────────────────
  void addScheduledIntervals(String taskId, List<ScheduledIntervalEntity> items) =>
      coordinators[taskId]?.addScheduledIntervals(items);
  void removeScheduledIntervals(String taskId, List<String> ids) =>
      coordinators[taskId]?.removeScheduledIntervals(ids);
  void updateScheduledIntervals(String taskId, List<ScheduledIntervalEntity> items) =>
      coordinators[taskId]?.updateScheduledIntervals(items);

  // ── ScheduledFixDateTimes ──────────────────────────────
  void addScheduledFixDateTimes(String taskId, List<ScheduledOccurrenceEntity> items) =>
      coordinators[taskId]?.addScheduledFixDateTimes(items);
  void removeScheduledFixDateTimes(String taskId, List<String> ids) =>
      coordinators[taskId]?.removeScheduledFixDateTimes(ids);
  void updateScheduledFixDateTimes(String taskId, List<ScheduledOccurrenceEntity> items) =>
      coordinators[taskId]?.updateScheduledFixDateTimes(items);

  // ── Goals ──────────────────────────────────────────────
  void addGoals(String taskId, List<GoalEntity> items) => coordinators[taskId]?.addGoals(items);
  void removeGoals(String taskId, List<String> ids) => coordinators[taskId]?.removeGoals(ids);
  void updateGoals(String taskId, List<GoalEntity> items) =>
      coordinators[taskId]?.updateGoals(items);
}
