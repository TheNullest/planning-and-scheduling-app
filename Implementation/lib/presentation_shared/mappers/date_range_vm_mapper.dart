import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/date_range_vm.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

class DateRangeVMMapper extends ViewModelMapper<DateRangeVM, DateRangeEntity> {
  @override
  DateRangeEntity toEntity(DateRangeVM model) => DateRangeEntity(
        id: model.id!,
        userId: model.userId!,
        createdAt: model.createdAt!,
        parentId: model.parentId,
        start: model.startAt,
        end: model.endAt,
      );

  @override
  DateRangeVM toVM(DateRangeEntity entity, {Map<String, dynamic>? relations}) =>
      DateRangeVM.fromEntity(entity: entity);

  List<String> toListIds(List<DateRangeVM> timeRanges) =>
      timeRanges.map((item) => item.id!).toList();
}
