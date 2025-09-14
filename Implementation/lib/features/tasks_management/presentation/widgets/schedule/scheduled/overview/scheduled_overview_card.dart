import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/domain/enums/hive/day_type.dart';
import 'package:zamaan/domain/enums/hive/week_day.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/scheduled_vms_manager.dart/schedule_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/views/schedule/upsert/schedule_upsert_view.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/scheduled/overview/schedule_overview_chips_section.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/scheduled/overview/scheduled_overview_sections.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';
import 'package:zamaan/presentation_shared/widgets/section.dart';

class ScheduledOverviewCard extends StatefulWidget {
  const ScheduledOverviewCard({super.key});

  @override
  State<ScheduledOverviewCard> createState() => _ScheduledOverviewCardState();
}

class _ScheduledOverviewCardState extends State<ScheduledOverviewCard> {
  late ScheduleVmsManager _scheduleVmsManager;
  late String? _taskId;
  ScheduledDayTimesManagerBloc get _scheduledDayTimesManagerBloc =>
      context.read<ScheduledDayTimesManagerBloc>();

  @override
  void initState() {
    super.initState();
    _taskId = context.read<TaskUpsertVM>().id;
    if (_taskId != null) {
      _initializeManager();
      _getScheduledDays();
    }
  }

  void _initializeManager() {
    _scheduleVmsManager = ScheduleVmsManager(
      userId: context.currentUserId,
      taskId: _taskId!,
    );
  }

  void _getScheduledDays() {
    _scheduledDayTimesManagerBloc.add(
      ScheduledDayTimesManagerEvent.getScheduledDayTimesByTaskId(taskId: _taskId!),
    );
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<ScheduledDayTimesManagerBloc, ScheduledDayTimesManagerState>(
            listener: (context, state) => state.maybeWhen(
              loadedByTaskId: (dayTimes) => _scheduleVmsManager.initScheduledDayTimes(dayTimes),
              deleted: (ids) {
                _scheduleVmsManager.onDeleted(ids);
                Navigator.pop(context);
                return null;
              },
              orElse: () => null,
            ),
          ),
          BlocListener<ScheduledOccurrencesManagerBloc, ScheduledOccurrencesManagerState>(
              listener: (context, state) => state.maybeWhen(
                    deleteBatchSuccess: (ids) => _scheduleVmsManager.onDeleted(ids, true),
                    orElse: () => null,
                  ))
        ],
        child: ChangeNotifierProvider<ScheduleVmsManager>.value(
          value: _scheduleVmsManager,
          child: Consumer<ScheduleVmsManager>(
              builder: (_, vm, __) => SectionWidget(
                    headerText: 'Scheduled',
                    headerIcon: Icons.calendar_today,
                    headerColor: ElementaryColors.primary,
                    child: ScheduledOverviewSections(
                      isTaskDefined: _taskId != null,
                      icon: Icons.calendar_today,
                      title: 'Schedules Modifictions',
                      dialogTitle: 'Modify schedules',
                      managerView: const ScheduleUpsertView(),
                      dailySections: dailySections,
                      vm: _scheduleVmsManager.upsertManager,
                      isScrollable: false,
                    ),
                  )),
        ),
      );

  List<ScheduleOverviewChipsSection> get dailySections => [
        ScheduleOverviewChipsSection<DateTime>(
          dayType: DayType.fixedDate,
          icon: Icons.date_range,
          label: 'Dates',
          schedule: _scheduleVmsManager.getScheduledFixedDateOverviewItems,
          color: ElementaryColors.weekdays,
        ),
        ScheduleOverviewChipsSection<WeekDay>(
          dayType: DayType.weekDay,
          icon: Icons.calendar_view_week,
          label: 'Weekdays',
          schedule: _scheduleVmsManager.getScheduledWeekDayOverviewItems,
          color: ElementaryColors.weekdays,
        ),
        ScheduleOverviewChipsSection<int>(
          dayType: DayType.monthDay,
          icon: Icons.calendar_month,
          label: 'Month Days',
          schedule: _scheduleVmsManager.getScheduledMonthDayOverviewItems,
          color: ElementaryColors.monthDays,
        ),
      ];
}
