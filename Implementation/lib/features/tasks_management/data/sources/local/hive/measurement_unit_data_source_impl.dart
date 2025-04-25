import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/data/sources/local/hive_data_source.dart';
import 'package:zamaan/features/tasks_management/data/models/local/hive/custom_measurement_unit_hive_model.dart';
import 'package:zamaan/features/tasks_management/data/sources/bases/measurement_unit_data_source.dart';

class CustomeMeasurementUnitHiveDataSourceImpl
    extends HiveDataSource<CustomMeasurementUnitHiveModel>
    implements CustomeMeasurementUnitDataSource<CustomMeasurementUnitHiveModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<CustomeMeasurementUnitHiveModel>] like this
  CustomeMeasurementUnitHiveDataSourceImpl({
    HiveServices<CustomMeasurementUnitHiveModel>? hiveBox,
  }) : super(HiveBoxConstants.customeCustomeMeasurementUnitsBox, hiveServices: hiveBox);
}
