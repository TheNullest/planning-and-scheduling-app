import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/extensions/int.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/date_range/date_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/schedule_constraints_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/time_range/time_range_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/schedule_constraints.dart/upsert_form.dart/schedule_constraints_upsert_form.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/scheduled/overview/scheduled_overview_sections.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';
import 'package:zamaan/presentation_shared/widgets/overview_chips_section.dart';
import 'package:zamaan/presentation_shared/widgets/section.dart';

/// A high-level widget that displays and manages **task scheduling constraints**.
///
/// This widget ties together:
///  * The `ScheduleConstraintsVm` view-model – representing the task’s current
///    schedule constraints and exception rules.
///  * Two BLoCs (`ScheduleConstraintsManagerBloc` and `ConstraintDateTimeRangesManagerBloc`)
///    that get and update schedule and time/date-range data.
///  * A [ScheduledOverviewSections] to present a concise,
///    read-only summary of all constraints with the ability to open
///    an editable bottom-sheet.
///
/// **Usage scenario:**
/// Place this inside a task-creation or task-editing screen to show when a task
/// cannot be scheduled (exception times, dates, date ranges, week days,
/// and month days). Tapping the card opens the `ScheduleConstraintsUpsertFormView`
/// where the user can edit those constraints.
///
/// Requires:
///  * A [TaskUpsertVM] in the widget tree (to provide the current task id).
///  * Active instances of [ScheduleConstraintsManagerBloc] and
///    [ConstraintDateTimeRangesManagerBloc] higher in the widget tree.
class TaskSchedulingConstraintsOverview extends StatefulWidget {
  /// Creates the scheduling-constraints overview for the currently
  /// edited task.
  const TaskSchedulingConstraintsOverview({super.key});

  @override
  State<TaskSchedulingConstraintsOverview> createState() =>
      _TaskSchedulingConstraintsOverviewState();
}

/// Private [State] implementation for [TaskSchedulingConstraintsOverview].
///
/// Responsible for:
///  * Instantiating and maintaining a [ScheduleConstraintsVm].
///  * Dispatching get events to the relevant BLoCs at init time.
///  * Reacting to BLoC state changes to keep the view-model in sync.
///  * Building the [ScheduledOverviewSections] with a list of
///    [OverviewChipsSection] summarizing each category of exceptions.
class _TaskSchedulingConstraintsOverviewState extends State<TaskSchedulingConstraintsOverview> {
  /// Backing view-model for schedule constraints, kept in sync with BLoC data.
  late ScheduleConstraintsVm _scheduleConstraints;

  /// Convenience getter to retrieve the current task id from the [TaskUpsertVM].
  /// Returns `null` if the task has not yet been created.
  String? get _taskId => context.read<TaskUpsertVM>().id;

  /// Shorthand accessor for the DateTime ranges manager BLoC.
  ConstraintDateTimeRangesManagerBloc get _constraintDateTimeRangesManagers =>
      context.read<ConstraintDateTimeRangesManagerBloc>();

  @override
  void initState() {
    super.initState();
    // Initialize the constraints view-model with the current user and task id.
    // Then trigger a get of the constraints for this task.
    _scheduleConstraints = ScheduleConstraintsVm(userId: context.currentUserId, taskId: _taskId!);
    context
        .read<ScheduleConstraintsManagerBloc>()
        .add(ScheduleConstraintsManagerEvent.getByTaskId(_taskId!));
  }

  /// Initializes or re-initializes [_scheduleConstraints] when constraints
  /// data is loaded or updated.
  ///
  /// If [constraints] is non-null, creates the view-model from the entity
  /// and dispatches events to get the related date/time exception ranges.
  /// If it is null, creates an empty view-model.
  FutureVoid _initConstraints(ScheduleConstraintsEntity? constraints) async {
    if (constraints != null) {
      _scheduleConstraints = ScheduleConstraintsVm.fromEntity(entity: constraints);
      _constraintDateTimeRangesManagers
        ..add(ConstraintDateTimeRangesManagerEvent.getDateRangesByTaskId(constraints.taskId))
        ..add(ConstraintDateTimeRangesManagerEvent.getTimeRangesByTaskId(constraints.taskId));
    } else {
      _scheduleConstraints = ScheduleConstraintsVm(userId: context.currentUserId, taskId: _taskId!);
    }
    setState(() {}); // trigger rebuild with updated view-model
    return;
  }

  @override
  Widget build(BuildContext context) {
    // If no task id exists yet, prompt the user to create a task first.
    if (_taskId == null) {
      return const Text(
        'At first should define new task, then could define schedule constraints',
      );
    }

    return MultiBlocListener(
      listeners: [
        // Listen for schedule constraints loaded from the manager BLoC.
        BlocListener<ScheduleConstraintsManagerBloc, ScheduleConstraintsManagerState>(
          listenWhen: (oldState, currentState) =>
              oldState.runtimeType != currentState.runtimeType || oldState != currentState,
          listener: (context, state) {
            state.maybeWhen(loadedByTaskId: _initConstraints, orElse: () => null);
          },
        ),
        // Listen for exception date/time ranges loaded from the ranges manager BLoC.
        BlocListener<ConstraintDateTimeRangesManagerBloc, ConstraintDateTimeRangesManagerState>(
          listener: (context, state) {
            state.maybeWhen(
              dateRangesLoaded: (exceptionDates) =>
                  _scheduleConstraints.initexceptionDateRanges(exceptionDates),
              timeRangesLoaded: (exceptionTimes) =>
                  _scheduleConstraints.initexceptionTimeRanges(exceptionTimes),
              orElse: () => null,
            );
          },
        ),
      ],
      child: ChangeNotifierProvider<ScheduleConstraintsVm>.value(
        value: _scheduleConstraints,
        child: Consumer<ScheduleConstraintsVm>(
          builder: (context, vm, _) {
            // The overview card that shows all constraint sections
            // and opens an edit bottom sheet when tapped.
            return SectionWidget(
              headerText: 'Constraints',
              headerIcon: Icons.lock,
              headerColor: ElementaryColors.error,
              child: ScheduledOverviewSections<ScheduleConstraintsVm>(
                isTaskDefined: _taskId != null,
                icon: Icons.grid_off_outlined,
                title: 'Schedule Constraints',
                dialogTitle: 'Edit Schedule Constraints',
                managerView: const ScheduleConstraintsUpsertFormView(),
                description: vm.description,
                startTime: vm.startDate,
                endTime: vm.endDate,
                dailySections: sections,
                vm: vm,
                canDisplayDescription: true,
                onClose: () => context
                    .read<ScheduleConstraintsManagerBloc>()
                    .add(ScheduleConstraintsManagerEvent.getByTaskId(_taskId!)),
              ),
            );
          },
        ),
      ),
    );
  }

  /// Builds the list of [OverviewChipsSection] representing each category of
  /// scheduling exceptions for the current task:
  ///  * Exception time ranges
  ///  * Exception date ranges
  ///  * Exception dates
  ///  * Exception week days
  ///  * Exception month days
  ///
  /// Each chip displays a formatted summary of its exception value.
  List<OverviewChipsSection> get sections => [
        OverviewChipsSection<TimeRangeVm>(
          icon: Icons.access_time,
          label: 'Exception Times',
          items: _scheduleConstraints.exceptionTimeRanges,
          formatter: (range) =>
              '${range.startTime.toDayTimeString} - ${range.endTime.toDayTimeString}',
          color: ElementaryColors.time,
        ),
        OverviewChipsSection<DateRangeVm>(
          icon: Icons.calendar_month,
          label: 'Exception Date Ranges',
          items: _scheduleConstraints.exceptionDateRanges,
          formatter: (range) => '${range.startDate!.toDateString} - ${range.endDate!.toDateString}',
          color: ElementaryColors.dateRanges,
        ),
        OverviewChipsSection<DateTime>(
          icon: Icons.calendar_today,
          label: 'Exception Dates',
          items: _scheduleConstraints.exceptionDates,
          formatter: (date) => date.toDateString,
          color: ElementaryColors.dates,
        ),
        OverviewChipsSection<WeekDay>(
          icon: Icons.calendar_view_week,
          label: 'Exception Week Days',
          items: _scheduleConstraints.exceptionWeekDays,
          formatter: (day) => day.name,
          color: ElementaryColors.weekdays,
        ),
        OverviewChipsSection<int>(
          icon: Icons.calendar_month,
          label: 'Exception Month Days',
          items: _scheduleConstraints.exceptionMonthDays,
          formatter: (day) => day.getMonthDayWithOrdinalSuffix,
          color: ElementaryColors.monthDays,
        ),
      ];
}
