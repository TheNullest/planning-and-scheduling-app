import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/data/sources/local/hive/base_hive_data_source_abstraction.dart';
import 'package:zamaan/data/sources/local/hive/hive_boxes.dart';
import 'package:zamaan/features/tasks/data/models/local/hive/measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks/data/sources/bases/local/hive/measurement_unit_data_source.dart';

class HiveMeasurementUnitDataSourceImpl
    extends BaseLocalDataSourceAbstraction<MeasurementUnitHiveModel>
    implements MeasurementUnitDataSource<MeasurementUnitHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<MeasurementUnitHiveModel>] like this
  HiveMeasurementUnitDataSourceImpl({
    HiveServices<MeasurementUnitHiveModel>? hiveBox,
  }) : super(HiveBoxConstants.measurementUnitsBox, hiveServices: hiveBox);
}
