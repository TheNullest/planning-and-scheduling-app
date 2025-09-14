part of 'init_dependencies.imports.dart';

void _dataMappers() {
  serviceLocator

    // User
    ..registerFactory<UserDataMapper>(
      UserDataMapperImpl.new,
    )

    // Task
    ..registerFactory<TaskDataMapper>(
      TaskDataMapperImpl.new,
    )

    // Category
    ..registerFactory<CategoryDataMapper>(
      CategoryDataMapperImpl.new,
    )

    // Goal
    ..registerFactory<GoalDataMapper>(
      GoalDataMapperImpl.new,
    )

    // CustomMeasurementUnit
    ..registerFactory<CustomMeasurementUnitDataMapper>(
      CustomMeasurementUnitDataMapperImpl.new,
    )

    // SubTask
    ..registerFactory<SubTaskDataMapper>(
      SubTaskDataMapperImpl.new,
    )

    // ScheduleConstraint
    ..registerFactory<ScheduleConstraintsDataMapper>(
      ScheduleConstraintDataMapperImpl.new,
    )

    // ScheduledDayTime
    ..registerFactory<ScheduledDayTimeDataMapper>(
      ScheduledDayTimeDataMapperImpl.new,
    )

    // ScheuduledOccurrence
    ..registerFactory<ScheduledOccurrenceDataMapper>(
      ScheduledOccurrenceDataMapperImpl.new,
    )

    // ScheduledInterval
    ..registerFactory<ScheduledIntervalDataMapper>(
      ScheduledIntervalDataMapperImpl.new,
    )

    // Tag
    ..registerFactory<TagDataMapper>(TagDataMapperImpl.new)

    // TaskActivity
    ..registerFactory<TaskActivityDataMapper>(
      TaskActivityDataMapperImpl.new,
    )

    // DateRange
    ..registerFactory<DateRangeDataMapper>(
      DateRangeDataMapperImpl.new,
    )

    // TimeRange
    ..registerFactory<TimeRangeDataMapper>(
      TimeRangeDataMapperImpl.new,
    );
}

// void _viewModelMappers() {
//   serviceLocator
//     // SubTask
//     ..registerFactory<ViewModelMapper<SubTaskUpsertVM, SubTaskEntity>>(SubTaskVMMapper.new)

//     // Task
//     ..registerFactory<ViewModelMapper<TaskVM, TaskEntity>>(TaskVMMapper.new);
// }
