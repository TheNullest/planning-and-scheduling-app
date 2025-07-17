import 'dart:developer';
import 'dart:io';

import 'package:zamaan/core/platform/directory_wrapper.dart';
import 'package:zamaan/core/platform/path_provider_wrapper.dart';
import 'package:zamaan/core/platform/platform_wrapper.dart';
import 'package:zamaan/core/services/hive/hive_wrapper.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/domain/enums/hive/goal_constraint.dart';
import 'package:zamaan/domain/enums/hive/interval_unit.dart';
import 'package:zamaan/domain/enums/hive/measurement_category.dart';
import 'package:zamaan/domain/enums/hive/measurement_unit.dart';
import 'package:zamaan/domain/enums/hive/os.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/domain/enums/hive/repetition_type.dart';
import 'package:zamaan/domain/enums/hive/scheduler_type.dart';
import 'package:zamaan/domain/enums/hive/sync_action.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';
import 'package:zamaan/features/auth/data/models/local/hive/remote_session_hive_model.dart';
import 'package:zamaan/features/auth/data/models/local/hive/user_hive_model.dart';
import 'package:zamaan/features/log/data/models/local/hive/device.dart';
import 'package:zamaan/features/log/data/models/local/hive/log.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/category_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/custom_measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/date_time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/date_time_ranges/time_range_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/goal_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/objects/duration_hive_model.g.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/schedule_constraints_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_instance_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_interval_hive_model.dart';
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
      ScheduledDayHiveModelAdapter(),
      ScheduledIntervalHiveModelAdapter(),
      ScheduledInstanceHiveModelAdapter(),
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
      SchedulerTypeAdapter(),
      SyncActionAdapter(),
      TaskStatusAdapter(),
      WeekDayAdapter(),
    ];

    final dartClassAdapters = <HiveBaseTypeAdapter>[DurationAdapter()];

    final adapters = enumAdapters + dartClassAdapters + modelAdapters;
    for (final adapter in adapters) {
      adapter.registerAdapter();
    }
  }
}
