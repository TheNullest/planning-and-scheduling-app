import 'package:zamaan/core/utils/uuid.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_vm.dart';

class DateRangeItemVm {
  DateRangeItemVm({required this.id, required this.startDate, required this.endDate});
  final String id;
  final DateTime startDate;
  final DateTime endDate;

  static List<DateRangeItemVm> fromVmList(List<DateRangeVm> items) => items
      .map((item) => DateRangeItemVm(
          id: item.id ?? uuidGenerator, startDate: item.startDate!, endDate: item.endDate!))
      .toList();

  static List<DateRangeItemVm> fromEntityList(List<DateRangeEntity> items) => items
      .map((item) =>
          DateRangeItemVm(id: item.id, startDate: item.startDate!, endDate: item.endDate!))
      .toList();
}
