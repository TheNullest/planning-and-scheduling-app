import 'package:hive_flutter/hive_flutter.dart';

abstract class HiveBoxConstants {
  HiveBoxConstants._();
  static const String remoteSessionsBox = 'remoteSessionsBox';
  static const String usersBox = 'usersBox';
  static const String devicesBox = 'devicesBox';
  static const String logsBox = 'logsBox';
  static const String syncLogsBox = 'syncLogsBox';
  static const String tasksBox = 'tasksBox';
  static const String subTasksBox = 'subTasksBox';
  static const String goalsBox = 'goalsBox';
  static const String categoriesBox = 'categoriesBox';
  static const String customMeasurementUnitsBox = 'customMeasurementUnitsBox';
  static const String scheduleConstraintsBox = 'scheduleConstraintsBox';
  static const String scheduledDayTimesBox = 'scheduledDayTimesBox';
  static const String scheduledIntervalsBox = 'scheduledIntervalsBox';
  static const String scheduledOccurrencesBox = 'scheduledOccurrencesBox';
  static const String dateRangesBox = 'dateRangesBox';
  static const String timeRangesBox = 'timeRangesBox';
  static const String tagsBox = 'tagsBox';
  static const String taskActivitysBox = 'taskActivitysBox';
}

enum HiveBox {
  users(HiveBoxConstants.usersBox),
  mainTasks(HiveBoxConstants.tasksBox),
  subTasksBox(HiveBoxConstants.subTasksBox),
  goalsBox(HiveBoxConstants.goalsBox),
  categoriesBox(HiveBoxConstants.categoriesBox),
  customeCustomeMeasurementUnitsBox(HiveBoxConstants.customMeasurementUnitsBox),
  scheduleConstraintssBox(HiveBoxConstants.scheduleConstraintsBox),
  tagsBox(HiveBoxConstants.tagsBox),
  taskActivitysBox(HiveBoxConstants.taskActivitysBox);

  const HiveBox(this.name);
  final String name;

  Future<Box> open() async => Hive.openBox<Type>(name);
}
