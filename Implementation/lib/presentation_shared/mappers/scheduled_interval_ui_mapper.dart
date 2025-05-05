import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_interval_ui.dart';
import 'package:zamaan/features/tasks_management/presentation/models/time_range_ui.dart';
import 'package:zamaan/presentation_shared/mappers/base_ui_mapper.dart';

class ScheduledIntervalUIMapper extends BaseUIMapper<ScheduledIntervalUI, ScheduledIntervalEntity> {
  ScheduledIntervalUIMapper({required this.scheduledTimeUIs});

  final List<List<TimeRangeUI>>? scheduledTimeUIs;
  
  @override
  ScheduledIntervalEntity toEntity(ScheduledIntervalUI model) {
    // TODO: implement toEntity
    throw UnimplementedError();
  }

  @override
  ScheduledIntervalUI toUIModel(ScheduledIntervalEntity entity) {
    // TODO: implement toUIModel
    throw UnimplementedError();
  }
}
