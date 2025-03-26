import 'package:hive_flutter/hive_flutter.dart';

abstract class HiveBoxConstants {
  HiveBoxConstants._();
  static const String usersBox = 'usersBox';
  static const String mainTasksBox = 'mainTasksBox';
  static const String subTasksBox = 'subTasksBox';
  static const String goalsBox = 'goalsBox';
  static const String categoriesBox = 'categoriesBox';
  static const String measurementUnitsBox = 'measurementUnitsBox';
  static const String taskSchedulersBox = 'taskSchedulersBox';
  static const String tagsBox = 'tagsBox';
  static const String timeIntervalsBox = 'timeIntervalsBox';
}

enum HiveBox {
  users(HiveBoxConstants.usersBox),
  mainTasks(HiveBoxConstants.mainTasksBox),
  subTasksBox(HiveBoxConstants.subTasksBox),
  goalsBox(HiveBoxConstants.goalsBox),
  categoriesBox(HiveBoxConstants.categoriesBox),
  measurementUnitsBox(HiveBoxConstants.measurementUnitsBox),
  taskSchedulersBox(HiveBoxConstants.taskSchedulersBox),
  tagsBox(HiveBoxConstants.tagsBox),
  timeIntervalsBox(HiveBoxConstants.timeIntervalsBox);

  const HiveBox(this.name);
  final String name;

  Future<Box> open() async => Hive.openBox<Type>(name);
}
