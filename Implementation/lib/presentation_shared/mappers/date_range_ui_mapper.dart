import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/features/tasks_management/presentation/models/date_range_ui.dart';
import 'package:zamaan/presentation_shared/mappers/base_ui_mapper.dart';
import 'package:zamaan/presentation_shared/models/entities/user_ui.dart';

class DateRangeUIMapper extends BaseUIMapper<DateRangeUI, DateRangeEntity> {
  DateRangeUIMapper({this.userUIs});

  final List<UserUI>? userUIs;

  @override
  DateRangeEntity toEntity(DateRangeUI model) {
    // TODO: implement toEntity
    throw UnimplementedError();
  }

  @override
  DateRangeUI toUIModel(DateRangeEntity entity) {
    // TODO: implement toUIModel
    throw UnimplementedError();
  }
}
