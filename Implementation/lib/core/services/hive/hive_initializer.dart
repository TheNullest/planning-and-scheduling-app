import 'dart:developer';
import 'dart:io';

import 'package:zamaan/core/platform/directory_wrapper.dart';
import 'package:zamaan/core/platform/path_provider_wrapper.dart';
import 'package:zamaan/core/platform/platform_wrapper.dart';
import 'package:zamaan/core/services/hive/hive_wrapper.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/auth/data/models/local/hive/remote_session_hive_model.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/log/data/models/local/hive/device.dart';
import 'package:zamaan/features/log/data/models/local/hive/log.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/category_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/constraint_date_time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/constraint_date_time_ranges/time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/custom_measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/objects/duration_hive_model.g.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_time_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_occurrence_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/sub_task_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/tag_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_activity_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/task_hive_model.dart';

abstract class HiveInitializer {
  HiveInitializer({
    required this.hive,
    required this.platform,
    required this.pathProvider,
    required this.directory,
  });

  final HiveWrapper hive;
  final PlatformWrapper platform;
  final PathProviderWrapper pathProvider;
  final DirectoryWrapper directory;

  Future<void> init();
}

class HiveInitializerImpl extends HiveInitializer {
  HiveInitializerImpl({
    required super.hive,
    required super.platform,
    required super.pathProvider,
    required super.directory,
  });

  /// Initializes Hive by setting the document directory and registering
  /// all required adapters.
  @override
  Future<void> init() async {
    if (platform.isWindows) {
      directory.directory = Directory(r'E:\Flutter.Dart\HiveFiles\Zamaan');
    } else {
      try {
        directory.directory = await pathProvider.getAppDocDirectory();
      } on Exception catch (e) {
        log(e.toString(), name: 'HiveInitializerImpl.init');
      }
    }
    if (!directory.existsSync()) {
      await directory.create(recursive: true);
    }
    await hive.initFlutter(directory.path);

    final modelAdapters = <HiveBaseTypeAdapter>[
      TaskHiveModelAdapter(),
      RemoteSessionHiveModelAdapter(),
      UserHiveModelAdapter(),
      CategoryHiveModelAdapter(),
      GoalHiveModelAdapter(),
      CustomMeasurementUnitHiveModelAdapter(),
      ScheduleConstraintsHiveModelAdapter(),
      ScheduledDayTimeHiveModelAdapter(),
      ScheduledIntervalHiveModelAdapter(),
      ScheduledOccurrenceHiveModelAdapter(),
      DateRangeHiveModelAdapter(),
      TimeRangeHiveModelAdapter(),
      SubTaskHiveModelAdapter(),
      TagHiveModelAdapter(),
      TaskActivityHiveModelAdapter(),
      LogHiveModelAdapter(),
      // SyncLogHiveModelAdapter(),
      DeviceHiveModelAdapter(),
    ];

    final enumAdapters = <HiveBaseTypeAdapter>[
      DayTypeAdapter(),
      GoalConstraintAdapter(),
      IntervalUnitAdapter(),
      MeasurementCategoryAdapter(),
      MeasurementUnitAdapter(),
      OSAdapter(),
      PriorityAdapter(),
      ReferenceTypeAdapter(),
      RepetitionTypeAdapter(),
      ScheduleTypeAdapter(),
      SyncActionAdapter(),
      TaskStatusAdapter(),
      OccurrenceStatusAdapter(),
      WeekDayAdapter(),
      ScheduledTimeModeAdapter()
    ];

    final dartClassAdapters = <HiveBaseTypeAdapter>[DurationAdapter()];

    final adapters = enumAdapters + dartClassAdapters + modelAdapters;
    for (final adapter in adapters) {
      adapter.registerAdapter();
    }
  }
}
