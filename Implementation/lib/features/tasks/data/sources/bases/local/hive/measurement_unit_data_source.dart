import 'package:zamaan/data/sources/base_data_source_abstraction.dart';
import 'package:zamaan/domain/entities/measurement_unit_entity.dart';

abstract class MeasurementUnitDataSource<
        MeasurementUnitModel extends MeasurementUnitEntity>
    extends BaseDataSourceAbstraction<MeasurementUnitModel> {}
