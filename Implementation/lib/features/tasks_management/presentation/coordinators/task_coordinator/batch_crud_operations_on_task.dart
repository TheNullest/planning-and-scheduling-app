part of 'task_coordinator.dart';

// ---------------------------------------------------------------------------
// Batch operations
// ---------------------------------------------------------------------------
extension TaskCoordinatorBatchCrudOps on TaskCoordinator {
  // ── Internal helper ────────────────────────────────────────────
  void _upsertItems<T>(
    List<T> target,
    List<T> items,
    String Function(T) idSelector,
  ) {
    for (final item in items) {
      final index = target.indexWhere((x) => idSelector(x) == idSelector(item));
      if (index != -1) {
        target[index] = item;
      } else {
        target.add(item);
      }
    }
  }

  // ── Batch update ────────────────────────────────────────────────
  void updateSubTasks(List<SubTaskEntity> items) => _upsertItems(_subTasks, items, (s) => s.id);
  void updateScheduledDayTimes(List<ScheduledDayTimeEntity> items) =>
      _upsertItems(_scheduledDayTimes, items, (s) => s.id);
  void updateScheduledIntervals(List<ScheduledIntervalEntity> items) =>
      _upsertItems(_scheduledIntervales, items, (s) => s.id);
  void updateScheduledFixDateTimes(List<ScheduledOccurrenceEntity> items) =>
      _upsertItems(_scheduledFixDateTimes, items, (s) => s.id);
  void updateGoals(List<GoalEntity> items) => _upsertItems(_goals, items, (g) => g.id);

  // ── Batch add ──────────────────────────────────────────────────
  void addSubTasks(List<SubTaskEntity> items) => _subTasks.addAll(items);
  void addScheduledDayTimes(List<ScheduledDayTimeEntity> items) => _scheduledDayTimes.addAll(items);
  void addScheduledIntervals(List<ScheduledIntervalEntity> items) =>
      _scheduledIntervales.addAll(items);
  void addScheduledFixDateTimes(List<ScheduledOccurrenceEntity> items) =>
      _scheduledFixDateTimes.addAll(items);
  void addGoals(List<GoalEntity> items) => _goals.addAll(items);

  // ── Batch remove by ID ─────────────────────────────────────────
  void removeSubTasks(List<String> ids) => _subTasks.removeWhere((s) => ids.contains(s.id));
  void removeScheduledDayTimes(List<String> ids) =>
      _scheduledDayTimes.removeWhere((s) => ids.contains(s.id));
  void removeScheduledIntervals(List<String> ids) =>
      _scheduledIntervales.removeWhere((s) => ids.contains(s.id));
  void removeScheduledFixDateTimes(List<String> ids) =>
      _scheduledFixDateTimes.removeWhere((s) => ids.contains(s.id));
  void removeGoals(List<String> ids) => _goals.removeWhere((g) => ids.contains(g.id));
}
