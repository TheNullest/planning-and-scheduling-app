/// range 0-10
abstract class BaseHiveTypeIds {
  static const int baseEntityAbstraction = 0;
}

/// range: 11-100
abstract class ClassHiveTypeIds {
  static const int user = 11;
  static const int task = 12;
  static const int subTask = 13;
  static const int category = 14;
  static const int goal = 15;
  static const int customMeasurementUnit = 16;
  static const int scheduleConstraints = 17;
  static const int scheduledDay = 18;
  static const int scheduledInterval = 19;
  static const int scheduledInstance = 20;
  static const int tag = 21;
  static const int taskActivity = 22;
  static const int dateRange = 23;
  static const int timeRange = 24;
}

/// start from 101-150
abstract class EnumHiveTypeIds {
  static const int dayType = 101;
  static const int goalConstraint = 102;
  static const int intevalUnit = 103;
  static const int measurementCategory = 104;
  static const int measurementUnit = 105;
  static const int os = 106;
  static const int priority = 107;
  static const int referenceType = 108;
  static const int repetitionType = 109;
  static const int schedulerType = 110;
  static const int syncAction = 111;
  static const int taskStatus = 112;
  static const int weekDay = 113;
}
