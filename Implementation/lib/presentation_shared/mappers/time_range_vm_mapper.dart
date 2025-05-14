import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/time_range_vm.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

class TimeRangeVMMapper extends ViewModelMapper<TimeRangeVM, TimeRangeEntity> {
  @override
  TimeRangeEntity toEntity(TimeRangeVM model) => TimeRangeEntity(
        id: model.id!,
        userId: model.userId!,
        createdAt: model.createdAt!,
        parentId: model.parentId,
        start: model.startAt.toInt(),
        end: model.endAt.toInt(),
      );

  @override
  TimeRangeVM toVM(TimeRangeEntity entity, {Map<String, dynamic>? relations}) =>
      TimeRangeVM.fromEntity(entity: entity);

  List<String> toListIds(List<TimeRangeVM> timeRanges) =>
      timeRanges.map((item) => item.id!).toList();
}
