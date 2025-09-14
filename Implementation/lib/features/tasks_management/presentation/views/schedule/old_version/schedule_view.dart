// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:provider/provider.dart';
// import 'package:zamaan/core/extensions/num.dart';
// import 'package:zamaan/core/utils/typedef.dart';
// import 'package:zamaan/domain/enums/hive/day_type.dart';
// import 'package:zamaan/features/tasks_management/presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_bloc.dart';
// import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.dart';
// import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_bloc.dart';
// import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_bloc.dart';
// import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_item_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/items/schedule_time_group_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/scheduled_vms_manager.dart/schedule_vms_manager.dart';
// import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_item_vm.dart';
// import 'package:zamaan/features/tasks_management/presentation/views/schedule/old_version/upsert_froms/scheduled_day_time_upsert_view.dart';
// import 'package:zamaan/features/tasks_management/presentation/views/schedule/old_version/upsert_froms/scheduled_fixed_dates_upsert_view.dart';
// import 'package:zamaan/presentation_shared/widgets/day_picker_with_time_ranges_card.dart';
// import 'package:zamaan/presentation_shared/widgets/section.dart';

// /// A widget that displays and manages all scheduled days, including
// /// fixed dates, weekdays, and month days.
// ///
// /// It integrates multiple managers and BLoCs to synchronize UI state
// /// with domain data:
// /// - Fetches constraint time/date ranges for the current task.
// /// - Displays lists of scheduled day cards categorized by type.
// /// - Enables multi-selection for batch actions (confirm, delete, cancel).
// ///
// /// **Behavior Overview:**
// /// - On initialization, it triggers the fetching of related constraint data.
// /// - It listens for `ConstraintDateTimeRangesManagerBloc` updates to populate
// ///   exception lists in the `_scheduleVmsManager`.
// /// - It dynamically builds sections for each day type using reactive state
// ///   management via `Selector` and `ValueListenableBuilder`.
// /// - It supports both single edit mode (modal bottom sheet) and multi-select
// ///   batch operations.
// class ScheduleView extends StatefulWidget {
//   const ScheduleView({super.key});

//   @override
//   State<ScheduleView> createState() => _ScheduleViewState();
// }

// class _ScheduleViewState extends State<ScheduleView> {
//   /// Provides access to the main `ScheduleVmsManager` instance.
//   /// This manager orchestrates day/time card ViewModels, selection states,
//   /// and exception handling.
//   ScheduleVmsManager get _scheduleVmsManager => context.read<ScheduleVmsManager>();

//   @override
//   void initState() {
//     super.initState();

//     // On widget initialization, fetch all constraint ranges related to the current task.
//     final taskId = _scheduleVmsManager.taskId;
//     context.read<ConstraintDateTimeRangesManagerBloc>()
//       ..add(ConstraintDateTimeRangesManagerEvent.getTimeRangesByTaskId(taskId))
//       ..add(ConstraintDateTimeRangesManagerEvent.getDateRangesByTaskId(taskId));

//     context
//         .read<ScheduleConstraintsManagerBloc>()
//         .add(ScheduleConstraintsManagerEvent.getByTaskId(taskId));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocListener(
//       listeners: [
//         BlocListener<ConstraintDateTimeRangesManagerBloc, ConstraintDateTimeRangesManagerState>(
//           /// Updates VM exception lists when constraint data is successfully loaded.
//           listener: (context, state) => state.maybeWhen(
//             timeRangesLoaded: (timeRanges) => _scheduleVmsManager.exceptionTimeRanges =
//                 TimeRangeItemVm.fromTimeRangeEntities(timeRanges),
//             dateRangesLoaded: (dateRanges) => _scheduleVmsManager.exceptionDateRanges =
//                 DateRangeItemVm.fromEntityList(dateRanges),
//             orElse: () => null,
//           ),
//         ),
//         BlocListener<ScheduleConstraintsManagerBloc, ScheduleConstraintsManagerState>(
//           listener: (context, state) => state.maybeWhen(
//               loadedByTaskId: (constraint) {
//                 _scheduleVmsManager.exceptionDates = constraint!.exceptionDates;
//                 _scheduleVmsManager.exceptionMonthDays = constraint.exceptionMonthDays;
//                 _scheduleVmsManager.exceptionWeekDays = constraint.exceptionWeekDays;

//                 return null;
//               },
//               orElse: () => null),
//         ),
//       ],
//       child: Selector<
//           ScheduleVmsManager,
//           ({
//             List<ScheduleTimeGroupVm> weekDayCards,
//             List<ScheduleTimeGroupVm> monthDayCards,
//             List<ScheduleTimeGroupVm> fixedDateCards
//           })>(
//         // Select only the day card lists to rebuild efficiently when they change.
//         selector: (_, vm) => (
//           fixedDateCards: vm.getScheduledFixedDates,
//           weekDayCards: vm.getScheduledWeekDays,
//           monthDayCards: vm.getScheduledMonthDays
//         ),
//         builder: (_, dayCards, __) => Selector<ScheduleVmsManager, bool>(
//           // Reactively rebuild the UI when multi-select mode changes.
//           selector: (_, vm) => vm.selectionManager.isSelectionMode,
//           builder: (context, isMultiSelectActivated, _) {
//             return Column(
//               children: [
//                 /// Section: Scheduled Fixed Dates
//                 SectionWidget(
//                   headerText: 'Scheduled Dates',
//                   headerIcon: Icons.calendar_today,
//                   child: Wrap(
//                     spacing: 5,
//                     children: [
//                       ...dayCards.fixedDateCards
//                           .map((day) => _prepareDay(day, isMultiSelectActivated)),
//                       _scheduleDates(),
//                     ],
//                   ),
//                 ),
//                 12.sizedBoxHeight,

//                 /// Section: Scheduled Weekdays
//                 SectionWidget(
//                   headerText: 'Scheduled Week Days',
//                   headerIcon: Icons.calendar_view_week,
//                   child: Wrap(
//                     spacing: 5,
//                     children: dayCards.weekDayCards
//                         .map((day) => _prepareDay(day, isMultiSelectActivated))
//                         .toList(),
//                   ),
//                 ),
//                 12.sizedBoxHeight,

//                 /// Section: Scheduled Month Days
//                 SectionWidget(
//                   headerText: 'Scheduled Month Days',
//                   headerIcon: Icons.calendar_view_month,
//                   child: Wrap(
//                     spacing: 5,
//                     children: dayCards.monthDayCards
//                         .map((day) => _prepareDay(day, isMultiSelectActivated))
//                         .toList(),
//                   ),
//                 ),

//                 /// Display multi-selection action buttons when activated.
//                 // Compact horizontal version
//                 if (isMultiSelectActivated)
//                   Selector<ScheduleVmsManager, int>(
//                     selector: (_, vm) => vm.selectionManager.selectedItems.length,
//                     builder: (_, selectedCount, __) {
//                       return _actionButtons(context);
//                     },
//                   ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Widget _actionButtons(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       decoration: BoxDecoration(
//         color: Theme.of(context).colorScheme.surfaceContainerHighest,
//         border: Border(
//           top: BorderSide(
//             color: Theme.of(context).colorScheme.outline.withAlpha(0.2.asColorAlpha),
//           ),
//         ),
//       ),
//       child: Row(
//         children: [
//           // Selection count badge
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//             decoration: BoxDecoration(
//               color: Theme.of(context).colorScheme.primary,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Text(
//               _scheduleVmsManager.selectionManager.selectedItems.length.toString(),
//               style: Theme.of(context).textTheme.labelSmall?.copyWith(
//                     color: Theme.of(context).colorScheme.onPrimary,
//                     fontWeight: FontWeight.bold,
//                   ),
//             ),
//           ),
//           const SizedBox(width: 12),

//           // Actions
//           Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 // Define defaults
//                 IconButton(
//                   onPressed: _scheduleVmsManager.selectionManager.selectedItems.isNotEmpty
//                       ? () => customShowModalBottomSheetDialog(
//                             context,
//                             _scheduleVmsManager.getDayTimeUpsertVm,
//                             const ScheduledDayTimeUpsertFormView(isMultiSelect: true),
//                             header:
//                                 'Define defaults for ${_scheduleVmsManager.selectionManager.selectedItems.length} days',
//                             headerIcon: Icons.calendar_view_day,
//                           )
//                       : null,
//                   icon: const Icon(Icons.timer_outlined),
//                   tooltip: 'Define Schedule',
//                 ),
//                 const SizedBox(width: 8),

//                 // Delete
//                 IconButton(
//                   onPressed: _scheduleVmsManager.selectionManager.selectedItems.isNotEmpty
//                       ? _deleteSelectedSchedules
//                       : null,
//                   icon: const Icon(Icons.delete_outline),
//                   tooltip: 'Delete Selected',
//                   style: IconButton.styleFrom(
//                     foregroundColor: Theme.of(context).colorScheme.error,
//                   ),
//                 ),
//                 const SizedBox(width: 8),

//                 // Cancel
//                 FilledButton.tonal(
//                   onPressed: () => _scheduleVmsManager.selectionManager.cancelSelection(),
//                   child: const Text('Cancel'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Deletes all currently selected scheduled days (week/month/fixed).
//   ///
//   /// Dispatches deletion events to both:
//   /// - `ScheduledDayTimesManagerBloc` → for week/month-based schedules.
//   /// - `ScheduledOccurrencesManagerBloc` → for fixed-date schedules.
//   ///
//   /// After successful dispatch, it disables multi-select mode.
//   FutureVoid _deleteSelectedSchedules() async => showDialog(
//         context: context,
//         builder: (context) {
//           final selectedCount = _scheduleVmsManager.selectionManager.selectedItems.length;

//           return AlertDialog(
//             title: const Text('Delete Schedules'),
//             content: Text(
//                 'Are you sure you want to delete $selectedCount selected schedule${selectedCount > 1 ? 's' : ''}?'),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(),
//                 child: const Text('Cancel'),
//               ),
//               FilledButton(
//                 onPressed: () {
//                   context
//                     ..read<ScheduledDayTimesManagerBloc>().add(
//                       ScheduledDayTimesManagerEvent.deleteBatch(
//                         _scheduleVmsManager.selectionManager.getSelectedWeekMonthDaysForDelete,
//                       ),
//                     )
//                     ..read<ScheduledOccurrencesManagerBloc>()
//                         .add(ScheduledOccurrencesManagerEvent.deleteBatch(
//                       _scheduleVmsManager.selectionManager.getSelectedFixedDatesForDelete,
//                     ));

//                   _scheduleVmsManager.selectionManager.cancelSelection();
//                 },
//                 style: FilledButton.styleFrom(
//                   backgroundColor: Theme.of(context).colorScheme.error,
//                 ),
//                 child: const Text('Delete'),
//               ),
//             ],
//           );
//         },
//       );

//   /// Builds a reactive day card widget (`DayPickerWithTimeRangesCard`)
//   /// that handles selection, multi-selection, and modal interaction.
//   ///
//   /// - If multi-select is disabled → tapping opens the edit modal.
//   /// - If multi-select is active → toggles selection state.
//   Widget _prepareDay(ScheduleTimeGroupVm dayTimePickerVm, bool isActivated) =>
//       ChangeNotifierProvider<ScheduleTimeGroupVm>.value(
//         value: dayTimePickerVm,
//         child: Consumer<ScheduleTimeGroupVm>(
//           builder: (_, vm, __) => DayPickerWithTimeRangesCard(
//             isSelected: false,

//             // When multi-select is inactive, open modal to edit the selected day.
//             onPressed: () {
//               _scheduleVmsManager.selectionManager.addSelectedItem(vm);

//               vm.scheduleType == DayType.fixedDate
//                   ? customShowModalBottomSheetDialog(
//                       context,
//                       _scheduleVmsManager.getFixedDatesUpsertVm,
//                       const ScheduledFixedDatesUpsertView(),
//                       header: 'Define Scheduled Day',
//                       headerIcon: Icons.calendar_view_day,
//                       onClose: _scheduleVmsManager.selectionManager.deselectAll,
//                     )
//                   : customShowModalBottomSheetDialog(
//                       context,
//                       _scheduleVmsManager.getDayTimeUpsertVm,
//                       const ScheduledDayTimeUpsertFormView(),
//                       header: 'Define Scheduled Day',
//                       headerIcon: Icons.calendar_view_day,
//                       onClose: _scheduleVmsManager.selectionManager.deselectAll,
//                     );
//             },

//             // Handle select/deselect for multi-selection mode.
//             onSelected: () => _scheduleVmsManager.selectionManager.addSelectedItem(vm),
//             onDeselected: () => _scheduleVmsManager.selectionManager.removeSelectedItem(vm),

//             // Enable multi-selection mode.
//             markIsMultiSelectAsTrue: () =>
//                 _scheduleVmsManager.selectionManager.isSelectionMode = true,

//             isMultiSelectableActived: isActivated,
//           ),
//         ),
//       );

//   Widget _scheduleDates() => FilledButton.tonal(
//         style: FilledButton.styleFrom(
//           fixedSize: const Size(126, 126),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           backgroundColor: Theme.of(context).colorScheme.surface,
//           padding: const EdgeInsets.all(16),
//         ),
//         onPressed: () async => customShowModalBottomSheetDialog(
//           context,
//           _scheduleVmsManager.getDayTimeUpsertVm,
//           const ScheduledDayTimeUpsertFormView(),
//           header: 'Define Scheduled Day',
//           headerIcon: Icons.calendar_view_day,
//           onClose: _scheduleVmsManager.selectionManager.deselectAll,
//         ),
//         child: const Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Add'),
//             Icon(
//               Icons.add,
//               size: 125 * .3,
//             ),
//           ],
//         ),
//       );
// }
