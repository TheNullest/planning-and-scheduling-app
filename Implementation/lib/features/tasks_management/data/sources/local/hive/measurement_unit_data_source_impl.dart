import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/custom_measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/local/bases/measurement_unit_data_source.dart';

class CustomeMeasurementUnitHiveDataSourceImpl
    extends HiveDataSource<CustomMeasurementUnitHiveModel>
    implements CustomMeasurementUnitLocalDataSource<CustomMeasurementUnitHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<CustomeMeasurementUnitHiveModel>] like this
  CustomeMeasurementUnitHiveDataSourceImpl({
    HiveBoxRunner<CustomMeasurementUnitHiveModel>? hiveBox,
  }) : super(hiveServices: hiveBox);
}
