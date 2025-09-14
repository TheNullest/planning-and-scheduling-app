import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/manager_vms/old_version/base_schedule_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';

class ScheduledFixedDatesUpsertVm extends BaseScheduleUpsertVm<ScheduledOccurrenceEntity> {
  ScheduledFixedDatesUpsertVm({
    required super.userId,
    required super.taskId,
    required super.exceptionTimeRanges,
    required this.exceptionDateRange,
    required this.exceptionDates,
    required super.selectedDays,
  });

  ScheduledFixedDatesUpsertVm.fromEntity({
    required super.entity,
    required super.selectedDays,
    required super.dayTimeVms,
    required super.exceptionTimeRanges,
    required this.exceptionDateRange,
    required this.exceptionDates,
  }) : super(taskId: entity!.taskId, userId: entity.userId);

  @override
  void initialize([ScheduledOccurrenceEntity? entity]) {
    if (entity != null && entity.id.isNotEmpty) {
      addToOriginalValues<List<DateTime>>(#scheduledDates, scheduledDates);
      addToOriginalValues<OccurrenceStatus>(#occurrenceStatus, entity.occurrenceStatus);
    } else {
      addToOriginalValues<List<DateTime>>(#scheduledDates, []);
      addToOriginalValues<OccurrenceStatus>(#occurrenceStatus, OccurrenceStatus.scheduled);
    }

    _scheduledDates
      ..clear
      ..addAll(getOriginalListValue<DateTime>(#scheduledDates));

    super.initialize(entity);
  }

  final List<DateRangeItemVm> exceptionDateRange;
  final List<DateTime> exceptionDates;

// on edit just could select one date and then in upsert form can add and select more dates
// but cant select multiple scheduled dates and edit them at once
  final _scheduledDates = <DateTime>[];
  List<DateTime> get scheduledDates => List.unmodifiable(_scheduledDates);
  void addScheduledDate(DateTime selectedDate) {
    _scheduledDates.add(selectedDate);
    notifyListeners();
  }

  void removeScheduledDate(DateTime selectedDate) {
    _scheduledDates.remove(selectedDate);
    notifyListeners();
  }

  @override
  void resetValues() {
    timeMode = getOriginalSignleValue<ScheduledTimeMode>(#timeMode);

    initScheduledTimes(getOriginalListValue<ScheduleTimeRangeVm>(#timeRangesList));

    super.resetValues();
  }

  @override
  List<ScheduledOccurrenceEntity> get toEntities {
    final entities = <ScheduledOccurrenceEntity>[];
    for (final selectedDate in _scheduledDates) {
      for (final timeRange in scheduledTimes) {
        if (!timeRange.isSoftRemoved.value) {
          entities.add(
            timeRange.toScheduledFixedDateEntity(
                taskId: taskId,
                userId: userId,
                description: description,
                timeMode: timeMode,
                scheduledDate: selectedDate,
                status: OccurrenceStatus.scheduled),
          );
        }
      }
    }
    return entities;
  }

  @override
  void onEntitiesUpserted(List<ScheduledOccurrenceEntity> entities,
          {List<ScheduleTimeRangeVm> Function(List<ScheduledOccurrenceEntity>)? toTimeRangeVms,
          bool isOnCreate = true}) =>
      super.onEntitiesUpserted(entities,
          toTimeRangeVms: ScheduleTimeRangeVm.fromOccurrenceEntities, isOnCreate: isOnCreate);

  void onEntitiesUpdated(List<ScheduledOccurrenceEntity> updatedEntities) {
    initScheduledTimes(
        updatedEntities.map((item) => ScheduleTimeRangeVm.fromScheduledOccurrenceEntity(item)).toList());
    super.onEntityUpdated(updatedEntities.isNotEmpty ? updatedEntities.first : null);
  }

  @override
  @protected
  ScheduledOccurrenceEntity get toEntity => throw UnimplementedError();

  @override
  bool get isValid => description.isNotEmpty;
}
