import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/di/init_dependencies.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/scheduler/scheduled_day_definition_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/scheduled_day_definition_data_source.dart';

/// A data source implementation for managing scheduleDefinition scheduling data using Hive.
///
/// This class extends [HiveDataSource] to leverage common data operations
/// and provides additional methods for specific scheduleDefinition-related queries.
class ScheduledDayDefinitionHiveDataSourceImpl
    extends HiveDataSource<ScheduledDayDefinitionHiveModel>
    implements ScheduledDayDefinitionLocalDataSource<ScheduledDayDefinitionHiveModel> {
  ScheduledDayDefinitionHiveDataSourceImpl({
    HiveServices<ScheduledDayDefinitionHiveModel>? hiveBox,
  })  : _hiveBox = hiveBox ?? serviceLocator<HiveServices<ScheduledDayDefinitionHiveModel>>(),
        _boxName = HiveBoxConstants.scheduleDefinitionsBox,
        super(hiveServices: hiveBox, HiveBoxConstants.scheduleDefinitionsBox);
  final String _boxName;
  final HiveServices<ScheduledDayDefinitionHiveModel> _hiveBox;
}
