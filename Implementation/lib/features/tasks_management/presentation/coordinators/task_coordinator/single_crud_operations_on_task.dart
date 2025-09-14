part of 'task_coordinator.dart';

// ---------------------------------------------------------------------------
// Single-item operations
// ---------------------------------------------------------------------------
extension TaskCoordinatorSingleCrudOps on TaskCoordinator {
  // ── List mutation helpers ───────────────────────────────────────
  void _updateItem<T>(List<T> list, bool Function(T) match, T updated) {
    final index = list.indexWhere(match);
    if (index != -1) list[index] = updated;
  }

  // ── SubTasks ────────────────────────────────────────────────────
  void addSubTask(SubTaskEntity subTask) => _subTasks.add(subTask);
  void removeSubTask(String id) => _subTasks.removeWhere((s) => s.id == id);
  void updateSubTask(SubTaskEntity updated) =>
      _updateItem(_subTasks, (s) => s.id == updated.id, updated);

  // ── ScheduledDayTimes ───────────────────────────────────────────
  void addScheduledDayTime(ScheduledDayTimeEntity item) => _scheduledDayTimes.add(item);
  void removeScheduledDayTime(String id) => _scheduledDayTimes.removeWhere((s) => s.id == id);
  void updateScheduledDayTime(ScheduledDayTimeEntity updated) =>
      _updateItem(_scheduledDayTimes, (s) => s.id == updated.id, updated);

  // ── ScheduledIntervales ─────────────────────────────────────────
  void addScheduledInterval(ScheduledIntervalEntity item) => _scheduledIntervales.add(item);
  void removeScheduledInterval(String id) => _scheduledIntervales.removeWhere((s) => s.id == id);
  void updateScheduledInterval(ScheduledIntervalEntity updated) =>
      _updateItem(_scheduledIntervales, (s) => s.id == updated.id, updated);

  // ── ScheduledFixDateTimes ───────────────────────────────────────
  void addScheduledFixDateTime(ScheduledOccurrenceEntity item) => _scheduledFixDateTimes.add(item);
  void removeScheduledFixDateTime(String id) =>
      _scheduledFixDateTimes.removeWhere((s) => s.id == id);
  void updateScheduledFixDateTime(ScheduledOccurrenceEntity updated) =>
      _updateItem(_scheduledFixDateTimes, (s) => s.id == updated.id, updated);

  // ── Goals ───────────────────────────────────────────────────────
  void addGoal(GoalEntity goal) => _goals.add(goal);
  void removeGoal(String id) => _goals.removeWhere((g) => g.id == id);
  void updateGoal(GoalEntity updated) => _updateItem(_goals, (g) => g.id == updated.id, updated);
}
