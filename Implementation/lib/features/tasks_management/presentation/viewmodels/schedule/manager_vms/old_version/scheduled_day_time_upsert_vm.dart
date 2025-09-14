import 'package:flutter/material.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/manager_vms/old_version/base_schedule_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/schedule_time_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';

class ScheduledDayTimeUpsertVm extends BaseScheduleUpsertVm<ScheduledDayTimeEntity> {
  ScheduledDayTimeUpsertVm({
    required super.userId,
    required super.taskId,
    required super.selectedDays,
    required super.exceptionTimeRanges,
  });

  ScheduledDayTimeUpsertVm.fromEntity({
    required super.entity,
    required super.dayTimeVms,
    required super.selectedDays,
    required super.exceptionTimeRanges,
  }) : super(taskId: entity!.taskId, userId: entity.userId);

  @override
  void initialize([ScheduledDayTimeEntity? entity]) {
    if (entity != null && entity.id.isNotEmpty) {
      addToOriginalValues<int>(#repeatCount, entity.repeatCount);
      addToOriginalValues<ScheduledTimeMode>(#timeMode, entity.timeMode);
    } else {
      addToOriginalValues<int>(#repeatCount, 0);
    }

    repeatCount = getOriginalSignleValue<int>(#repeatCount);

    super.initialize(entity);
  }

  late int _repeatCount = 0;
  int get repeatCount => _repeatCount;
  set repeatCount(int value) {
    _repeatCount = value;
    processChanges(#repeatCount, _repeatCount);
  }

  @override
  List<ScheduledDayTimeEntity> get toEntities {
    final entities = <ScheduledDayTimeEntity>[];
    for (final selectedDay in selectedDaysList) {
      for (final timeRange in scheduledTimes) {
        if (!timeRange.isSoftRemoved.value) {
          entities.add(
            timeRange.toScheduledDayTimeEntity(
              taskId: taskId,
              userId: userId,
              description: description,
              dayType: selectedDay.type.getDayType,
              dayLabel: selectedDay.toStringForEntity,
              repeatCount: repeatCount,
              timeMode: timeMode,
            ),
          );
        }
      }
    }
    return entities;
  }

  @override
  @protected
  ScheduledDayTimeEntity get toEntity => throw UnimplementedError();

  @override
  void onEntitiesUpserted(List<ScheduledDayTimeEntity> entities,
          {List<TimeRangeVm> Function(List<ScheduledDayTimeEntity>)? toTimeRangeVms,
          bool isOnCreate = true}) =>
      super.onEntitiesUpserted(entities,
          toTimeRangeVms: ScheduleTimeRangeVm.fromDayTimeEntities, isOnCreate: isOnCreate);

  @override
  void resetValues() {
    repeatCount = getOriginalSignleValue<int>(#repeatCount);
    timeMode = getOriginalSignleValue<ScheduledTimeMode>(#timeMode);

    initScheduledTimes([], true);

    super.resetValues();
  }

  @override
  bool get isValid => description.isNotEmpty;
}
