import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';

class OnUpdatingDateTimeConstraintsExceptions {
  OnUpdatingDateTimeConstraintsExceptions({
    required String userId,
    required String parentId,
    required String description,
    required bool allShouldModify,
    required List<TimeRangeVm> exceptionTimeRanges,
    required List<DateRangeVm> exceptionDateRanges,
  }) {
    // TimeRange
    for (final item in exceptionTimeRanges) {
      if (item.isNewItem.value) {
        addedexceptionTimes.add(item.toEntity(parentId, userId, description));
      } else if (item.isModified.value || allShouldModify) {
        updatedexceptionTimes.add(item.toEntity(parentId, userId, description));
      }
      if (item.isSoftRemoved.value) deletedexceptionTimes.add(item.id);
    }

    // DateRange

    for (final item in exceptionDateRanges) {
      if (item.isNewItem.value) {
        addedexceptionDates.add(item.toDateRangeEntity(parentId, userId, description));
      } else if (item.isModified.value || allShouldModify) {
        updatedexceptionDates.add(item.toDateRangeEntity(parentId, userId, description));
      }
      if (item.isSoftRemoved.value) deletedexceptionDates.add(item.id);
    }
  }

  final List<TimeRangeEntity> updatedexceptionTimes = [];
  final List<DateRangeEntity> updatedexceptionDates = [];
  final List<TimeRangeEntity> addedexceptionTimes = [];
  final List<DateRangeEntity> addedexceptionDates = [];
  final List<String> deletedexceptionTimes = [];
  final List<String> deletedexceptionDates = [];
}
