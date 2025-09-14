import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/items/schedule_time_group_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/schedule_upsert_manager/schedule_upsert_manager_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/views/schedule/upsert/parts/scheduled_time_range_group_tile.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/repeat_count_widget.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/selectable_widget.dart'; // For number input formatting

part 'parts/bottom_action_bar_widget.dart';
part 'parts/schedule_section_card.dart';
part 'parts/global_options.dart';

class ScheduleUpsertView extends StatefulWidget {
  const ScheduleUpsertView({super.key});

  @override
  State<ScheduleUpsertView> createState() => _ScheduleUpsertViewState();
}

class _ScheduleUpsertViewState extends State<ScheduleUpsertView> {
  // --- STATE MANAGEMENT ---
  late ScheduleUpsertManagerVm _vm;
  late ScheduledDayTimesManagerBloc _dayTimesBloc;

  final _globalDescriptionController = TextEditingController();
  final _repeatCountController = TextEditingController();

  void _showAddScheduleDialog(String method) {
    // Your existing logic
  }

  void _showEditGroupDialog(ScheduleTimeGroupVm group) {
    // Your existing logic
  }

  @override
  void initState() {
    super.initState();
    _vm = context.read<ScheduleUpsertManagerVm>();
    _dayTimesBloc = context.read<ScheduledDayTimesManagerBloc>();
  }

  @override
  void dispose() {
    _globalDescriptionController.dispose();
    _repeatCountController.dispose();
    super.dispose();
  }

  // --- UI BUILD ---
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Global Options
                GlobalScheduleOptionsWidget(_globalDescriptionController),
                const SizedBox(height: 24),

                // Schedule Lists
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Schedule Times',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),

                // Schedule Sections
                ScheduleSectionCard(
                  vm: _vm,
                  title: 'Weekly Schedules',
                  icon: Icons.calendar_view_week_outlined,
                  items: _vm.scheduledWeekDays,
                  onAddPressed: () => _showAddScheduleDialog('Weekly'),
                  type: ScheduleType.recurringWeekDays,
                ),
                const SizedBox(height: 16),

                ScheduleSectionCard(
                  vm: _vm,
                  title: 'Monthly Schedules',
                  icon: Icons.calendar_view_month_outlined,
                  items: _vm.scheduledMonthDays,
                  onAddPressed: () => _showAddScheduleDialog('Monthly'),
                  type: ScheduleType.recurringMonthDays,
                ),
                const SizedBox(height: 16),

                ScheduleSectionCard(
                  vm: _vm,
                  title: 'Specific Dates',
                  icon: Icons.event_outlined,
                  items: _vm.scheduledFixedDates,
                  onAddPressed: () => _showAddScheduleDialog('Date'),
                  type: ScheduleType.fixedDate,
                ),
                const SizedBox(height: 16),

                ScheduleSectionCard(
                  vm: _vm,
                  title: 'Interval',
                  icon: Icons.timeline,
                  items: const [],
                  onAddPressed: () => _showAddScheduleDialog('Interval'),
                  type: ScheduleType.recurringIntervals,
                ),
              ],
            ),
          ),

          // Bottom Action Bar
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomActionBarWidget(),
          ),
        ],
      ),
    );
  }
}
