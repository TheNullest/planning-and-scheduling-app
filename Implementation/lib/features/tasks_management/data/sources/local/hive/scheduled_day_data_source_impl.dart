import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_day_data_source.dart';

/// A data source implementation for managing scheduleConstraints scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data operations
/// and provides additional methods for specific scheduleConstraints-related queries.
class ScheduledDayHiveDataSourceImpl
    extends HiveDataSource<ScheduledDayHiveModel>
    implements ScheduledDayLocalDataSource<ScheduledDayHiveModel> {
  ScheduledDayHiveDataSourceImpl({
    HiveServices<ScheduledDayHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveServices<ScheduledDayHiveModel>>(),
        _boxName = HiveBoxConstants.scheduleConstraintssBox,
        super(hiveServices: hiveBox, HiveBoxConstants.scheduleConstraintssBox);
  final String _boxName;
  final HiveServices<ScheduledDayHiveModel> _hiveBox;
}
