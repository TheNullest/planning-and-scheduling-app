part of 'app_locale_keys.dart';

class _Tasks {
  const _Tasks();
  _TasksStatus get status => const _TasksStatus();
  _TasksEmptyStates get emptyStates => const _TasksEmptyStates();
  _TasksErrors get errors => const _TasksErrors();
  _TasksMessages get messages => const _TasksMessages();
}

class _TasksStatus {
  const _TasksStatus();
  static const _prefix = 'tasks.status';
  String get completed => '$_prefix.completed'.tr();
  String get overdue => '$_prefix.overdue'.tr();
  String get pending => '$_prefix.pending'.tr();
  String get scheduled => '$_prefix.scheduled'.tr();
  String get inProgress => '$_prefix.in_progress'.tr();
  String get canceled => '$_prefix.canceled'.tr();
  String get paused => '$_prefix.paused'.tr();
}

class _TasksEmptyStates {
  const _TasksEmptyStates();
  static const _prefix = 'tasks.empty_states';
  String get noTasks => '$_prefix.no_tasks'.tr();
  String get noCompleted => '$_prefix.no_completed'.tr();
  String get noResults => '$_prefix.no_results'.tr();
  String get noPlanned => '$_prefix.no_planned'.tr();
  String get noOverdue => '$_prefix.no_overdue'.tr();
  String get noCanceled => '$_prefix.no_canceled'.tr();
  String get noPaused => '$_prefix.no_paused'.tr();
}

class _TasksErrors {
  const _TasksErrors();
  static const _prefix = 'tasks.errors';
  String get emptyTitle => '$_prefix.empty_title'.tr();
  String get invalidDate => '$_prefix.invalid_date'.tr();
  String get invalidPriority => '$_prefix.invalid_priority'.tr();
  String get invalidCategory => '$_prefix.invalid_category'.tr();
  String get invalidGoal => '$_prefix.invalid_goal'.tr();
  String get invalidCustomeMeasurementUnit => '$_prefix.invalid_measurement_unit'.tr();
  String get invalidStartDate => '$_prefix.invalid_start_date'.tr();
  String get invalidEndDate => '$_prefix.invalid_end_date'.tr();
  String get startDateAfterEndDate => '$_prefix.start_date_after_end_date'.tr();
  String get invalidTime => '$_prefix.invalid_time'.tr();
  String get invalidRepeatInterval => '$_prefix.invalid_repeat_interval'.tr();
  String get invalidRepeatUntil => '$_prefix.invalid_repeat_until'.tr();
}

class _TasksMessages {
  const _TasksMessages();
  static const _prefix = 'tasks.messages';
  String get taskCreated => '$_prefix.task_created'.tr();
  String get taskUpdated => '$_prefix.task_updated'.tr();
  String get taskDeleted => '$_prefix.task_deleted'.tr();
  String get taskCompleted => '$_prefix.task_completed'.tr();
  String get taskReopened => '$_prefix.task_reopened'.tr();
  String get subtaskAdded => '$_prefix.subtask_added'.tr();
  String get subtaskRemoved => '$_prefix.subtask_removed'.tr();
  String get tagAdded => '$_prefix.tag_added'.tr();
  String get tagRemoved => '$_prefix.tag_removed'.tr();
  String get goalAdded => '$_prefix.goal_added'.tr();
  String get goalRemoved => '$_prefix.goal_removed'.tr();
  String get categoryAdded => '$_prefix.category_added'.tr();
  String get categoryRemoved => '$_prefix.category_removed'.tr();
  String get customeCustomeMeasurementUnitAdded => '$_prefix.measurement_unit_added'.tr();
  String get customeCustomeMeasurementUnitRemoved => '$_prefix.measurement_unit_removed'.tr();
  String get taskCanceled => '$_prefix.task_canceled'.tr();
  String get taskPaused => '$_prefix.task_paused'.tr();
}
