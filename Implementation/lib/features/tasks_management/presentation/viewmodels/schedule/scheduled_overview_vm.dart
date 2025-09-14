// import 'package:flutter/material.dart';
// import 'package:zamaan/domain/entities/scheduled_day_time.dart';
// import 'package:zamaan/domain/enums/hive/day_type.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_item_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/day_time/day_picker_with_time_ranges_card_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/day_time/scheduled_day_time_upsert_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/items/scheduled_time_range.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/items/selected_day.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
// import 'package:zamaan/presentation_shared/models/day_label_with_time_ranges.dart';

// class ScheduledOverviewVm extends ChangeNotifier {

//   final _scheduledDayTimes = <ScheduledDayTimeEntity>[];
//   final _dayCardItems = <DayPickerWithTimeRangesCardVm>[];
//   List<DayPickerWithTimeRangesCardVm> get dayCardItems => List.unmodifiable(_dayCardItems);
//   late List<TimeRangeItemVm> _exceptionTimeRanges = [];
//   late List<DateRangeItemVm> _exceptionDateRanges = [];
//   List<TimeRangeItemVm> get exceptionTimeRanges => List.unmodifiable(_exceptionTimeRanges);
//   List<DateRangeItemVm> get exceptionDateRanges => List.unmodifiable(_exceptionDateRanges);
//   set exceptionTimeRanges(List<TimeRangeItemVm> value) {
//     _exceptionTimeRanges = value;
//     notifyListeners();
//   }

//   set exceptionDateRanges(List<DateRangeItemVm> value) {
//     _exceptionDateRanges = value;
//     notifyListeners();
//   }

//   void initItems(List<ScheduledDayTimeEntity> entities) {
//     clearValues();
//     _scheduledDayTimes.clear();
//     if (entities.isNotEmpty) {
//       _scheduledDayTimes.addAll(sortItems(entities));
//       for (final item in _scheduledDayTimes) {
//         if (_dayCardItems.any((card) => card.dayLabel == item.dayLabel)) {
//           continue;
//         }
//         final dayTimeGroup = _scheduledDayTimes
//             .where((entity) => entity.dayType == item.dayType && entity.dayLabel == item.dayLabel)
//             .toList();

//         _dayCardItems.add(DayPickerWithTimeRangesCardVm(
//           dayType: item.dayType,
//           dayLabel: item.dayLabel,
//           scheduledDayTimeVms:
//               dayTimeGroup.map((e) => ScheduledTimeRangeVM.fromDayTimeEntity(e)).toList(),
//         ));
//       }

//       getPersistedWeekDayItems
//         ..clear()
//         ..addAll(_dayCardItems.where((item) => item.dayType == DayType.weekDay).toList());

//       getPersistedMonthDayItems
//         ..clear()
//         ..addAll(_dayCardItems.where((item) => item.dayType == DayType.monthDay).toList());
//     }

//     notifyListeners();
//   }

//   List<ScheduledDayTimeEntity> sortItems(List<ScheduledDayTimeEntity> entities) {
//     final sortedDayTimes = List<ScheduledDayTimeEntity>.from(entities)
//       ..sort((a, b) {
//         final aTime = a.startTime;
//         final bTime = b.startTime; // 86399 seconds = 23:59:59
//         return aTime.compareTo(bTime);
//       });
//     return sortedDayTimes;
//   }

//   List<SelectedDay> get _selectedDaysList => _dayCardItems
//       .where((item) => item.isSelected.value)
//       .map((item) => SelectedDay(type: item.dayType, label: item.dayLabel))
//       .toList();

//   ScheduledDayTimeUpsertVm getUpsertVm([DayPickerWithTimeRangesCardVm? dayTimePickerVm]) {
//     final selectedDayCards = _dayCardItems.where((item) => item.isSelected.value).toList();

//     final mainCard = dayTimePickerVm ??
//         selectedDayCards.firstWhere((item) => item.timeRanges.isNotEmpty,
//             orElse: () => selectedDayCards.first);

//     final mainDayTimeEntity = _scheduledDayTimes.firstWhere(
//       (entity) => entity.id == mainCard.firstTimeRangeId,
//       orElse: () => ScheduledDayTimeEntity(
//         id: '',
//         userId: _userId,
//         createdAt: DateTime.now(),
//         updatedAt: DateTime.now(),
//         description: '',
//         taskId: taskId,
//         dayType: mainCard.dayType,
//         dayLabel: mainCard.dayLabel,
//         repeatCount: 0,
//         startTime: 0,
//         endTime: 1439,
//         allowAllDay: true,
//       ),
//     );

//     final scheduledDayTimeVms = selectedDayCards
//         .expand((card) => _scheduledDayTimes
//             .where((item) => item.dayLabel == card.dayLabel)
//             .map((e) => TimeRangeVm.fromScheduledDayTimeEntity(e)))
//         .toList();

//     return mainDayTimeEntity.id.isNotEmpty
//         ? ScheduledDayTimeUpsertVm.fromEntity(
//             entity: mainDayTimeEntity,
//             dayTimeVms: scheduledDayTimeVms,
//             selectedDays: _selectedDaysList,
//             exceptionTimeRanges: exceptionTimeRanges)
//         : ScheduledDayTimeUpsertVm(
//             userId: _userId,
//             taskId: taskId,
//             selectedDays: _selectedDaysList,
//             exceptionTimeRanges: exceptionTimeRanges);
//   }

//   List<TimeRangeVm> getDayTimeVmsByDayLabels(
//       List<ScheduledDayTimeEntity> entities, List<String> dayLabels) {
//     final vms = <TimeRangeVm>[];
//     for (final label in dayLabels) {
//       final matchedEntities = entities.where((e) => e.dayLabel == label);
//       vms.addAll(matchedEntities.map((e) => TimeRangeVm.fromScheduledDayTimeEntity(e)));
//     }
//     return vms;
//   }

//   List<DayPickerWithTimeRangesCardVm> getPersistedWeekDayItems = [];

//   List<DayPickerWithTimeRangesCardVm> getPersistedMonthDayItems = [];

//   List<DayLabelWithTimeRanges<String>> get getScheduledWeekDays => getPersistedWeekDayItems
//       .map((item) =>
//           DayLabelWithTimeRanges(dayLabel: item.dayLabel, timeRanges: item.getTimeRangesAsString))
//       .toList();

//   List<DayLabelWithTimeRanges<String>> get getScheduledMonthDays => getPersistedMonthDayItems
//       .map((item) =>
//           DayLabelWithTimeRanges(dayLabel: item.dayLabel, timeRanges: item.getTimeRangesAsString))
//       .toList();

//   DayPickerWithTimeRangesCardVm getDayPickerVm(
//     DayType dayType,
//     String dayString,
//   ) {
//     final desiredList =
//         dayType == DayType.weekDay ? getPersistedWeekDayItems : getPersistedMonthDayItems;
//     final rawDayPicker = desiredList.firstWhere((item) => item.dayLabel == dayString,
//         orElse: () =>
//             DayPickerWithTimeRangesCardVm.asRawItem(dayType: dayType, dayLabel: dayString));
//     if (rawDayPicker.isNewItem.value) {
//       _dayCardItems.add(rawDayPicker);
//     }
//     return rawDayPicker;
//   }

//   void clearValues() {
//     _dayCardItems.clear();
//     disableMultiSelect();
//   }

//   final ValueNotifier<bool> isMultiSelectActivated = ValueNotifier(false);

//   bool get hasScheduledDays => _dayCardItems.isNotEmpty;
//   void disableMultiSelect() {
//     for (final item in _dayCardItems.where((item) => item.isSelected.value)) {
//       item.toggleSelected();
//     }
//     isMultiSelectActivated.value = false;
//   }

//   void diselectAll() {
//     for (final item in _dayCardItems.where((item) => item.isSelected.value)) {
//       item.toggleSelected();
//     }
//   }

//   void onUpserted(List<ScheduledDayTimeEntity> upsertedEntities) {
//     // Map upsertedEntities by their day labels for quick lookup
//     final upsertedEntitiesMap = <String, List<ScheduledDayTimeEntity>>{};

//     for (final entity in sortItems(upsertedEntities)) {
//       if (!upsertedEntitiesMap.containsKey(entity.dayLabel)) {
//         upsertedEntitiesMap[entity.dayLabel] = [];
//       }
//       upsertedEntitiesMap[entity.dayLabel]!.add(entity);
//     }

//     // Add new entities to the list
//     for (final entry in upsertedEntitiesMap.entries) {
//       final dayLabel = entry.key;
//       final entities = entry.value;
//       _dayCardItems[_existingCardIndex(dayLabel)].onUpserted(entities);
//     }

//     notifyListeners();
//   }

//   void onDeleted(List<String> ids) {
//     _scheduledDayTimes.removeWhere((item) => ids.contains(item.id));

//     for (final card in _dayCardItems) {
//       card.onDeleted(ids);
//     }

//     notifyListeners();
//   }

//   int _existingCardIndex(String dayLabel) =>
//       _dayCardItems.indexWhere((dayCard) => dayCard.dayLabel == dayLabel);

// }
