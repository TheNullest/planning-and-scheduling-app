import 'package:zamaan/features/auth/presentation/constants/hive_box_constants.dart';
import 'package:zamaan/infrastructure/services/hive_services.dart';
import 'package:zamaan/data/sources/base_local_data_source_abstraction.dart';
import 'package:zamaan/features/tasks/data/models/local/hive/measurement_unit_local_model.dart';
import 'package:zamaan/features/tasks/data/sources/bases/local/hive/measurement_unit_data_source.dart';

class HiveMeasurementUnitDataSourceImpl
    extends BaseLocalDataSourceAbstraction<MeasurementUnitLocalModel>
    implements MeasurementUnitDataSource<MeasurementUnitLocalModel> {
  // Just to add the testablity feature to the class,
  // we need to inject the [HiveInitializer<MeasurementUnitLocalModel>] like this
  HiveMeasurementUnitDataSourceImpl({
    HiveServices<MeasurementUnitLocalModel>? hiveBox,
  }) : super(HiveBoxConstants.MEASUREMENT_UNITS_BOX, hiveBox: hiveBox);
}
