import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/extensions/int.dart';
import 'package:zamaan/core/extensions/time_of_day.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/date_time_ranges/date_time_ranges_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/show_floating_centered_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/scheduler/schedule_constraints_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/scheduler/schedule_constraints.dart/upsert_form.dart/schedule_constraints_upsert_form.dart';

// Define a color scheme for schedule constraints
class ConstraintColors {
  static const Color primary = Color(0xFF4361EE); // Vibrant blue
  static const Color secondary = Color(0xFF3A0CA3); // Deep purple
  static const Color accent = Color(0xFF4CC9F0); // Light blue
  static const Color surface = Color(0xFFF8F9FA); // Light background
  static const Color error = Color(0xFFE63946); // Alert red

  // Category-specific colors
  static const Color time = Color(0xFF2A9D8F); // Teal
  static const Color dates = Color.fromARGB(255, 193, 62, 29);
  static const Color dateRanges = Color(0xFFE76F51); // Coral
  static const Color weekdays = Color(0xFFF4A261); // Orange
  static const Color monthDays = Color(0xFF9D4EDD); // Purple
}

class ScheduleConstraintsCard extends StatefulWidget {
  const ScheduleConstraintsCard({super.key});

  @override
  State<ScheduleConstraintsCard> createState() => _ScheduleConstraintsCardState();
}

class _ScheduleConstraintsCardState extends State<ScheduleConstraintsCard> {
  late final ScheduleConstraintsVm scheduleConstraints;
  String? get taskId => context.read<TaskUpsertVM>().id;

  DateTimeRangesManagerBloc get dateTimeRangesManagers => context.read<DateTimeRangesManagerBloc>();

  @override
  void initState() {
    _loadConstraints();
    super.initState();
  }

  FutureVoid _loadConstraints() async {
    scheduleConstraints = ScheduleConstraintsVm(userId: context.currentUserId);
    if (taskId != null) {
      scheduleConstraints.taskId = taskId!;
      context
          .read<ScheduleConstraintsManagerBloc>()
          .add(ScheduleConstraintsManagerEvent.fetchByTaskId(taskId!));
    }
  }

  FutureVoid _initConstraints(ScheduleConstraintsEntity? constraints) async {
    scheduleConstraints.initialize(constraints);
    if (constraints != null) {
      dateTimeRangesManagers
        ..add(
            DateTimeRangesManagerEvent.fetchBatchDateRangesByIds(constraints.dateRangeExceptionIds))
        ..add(DateTimeRangesManagerEvent.fetchBatchTimeRangesByIds(
            constraints.timeRangeExceptionIds));
    }
  }

  void _onCreate(String id) {
    scheduleConstraints.handleEntityCreated(id);
    dateTimeRangesManagers
      ..add(
          DateTimeRangesManagerEvent.createBatchTimeRanges(scheduleConstraints.timeRangeExceptions))
      ..add(DateTimeRangesManagerEvent.createBatchDateRanges(
          scheduleConstraints.dateRangeExceptions));
  }

  void _onUpdate(ScheduleConstraintsEntity updatedConstraints) {
    final updatedData = scheduleConstraints.onUpdating;
    dateTimeRangesManagers
      ..add(DateTimeRangesManagerEvent.updateBatchTimeRanges(updatedData.updatedTimeExceptions))
      ..add(DateTimeRangesManagerEvent.updateBatchDateRanges(updatedData.updatedDateExceptions))
      ..add(DateTimeRangesManagerEvent.createBatchTimeRanges(updatedData.addedTimeExceptions))
      ..add(DateTimeRangesManagerEvent.createBatchDateRanges(updatedData.addedDateExceptions))
      ..add(DateTimeRangesManagerEvent.deleteBatchTimeRanges(updatedData.deletedTimeExceptions))
      ..add(DateTimeRangesManagerEvent.deleteBatchDateRanges(updatedData.deletedDateExceptions));

    scheduleConstraints.handleEntityUpdated(updatedConstraints);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<ScheduleConstraintsManagerBloc, ScheduleConstraintsManagerState>(
              listenWhen: (oldState, currentState) =>
                  oldState.runtimeType != currentState.runtimeType || oldState != currentState,
              listener: (context, state) {
                state.maybeWhen(
                    fetchedByTaskId: _initConstraints,
                    created: (constraints) => _onCreate(constraints),
                    updated: (constraints) => _onUpdate(constraints),
                    deleted: () => scheduleConstraints.initialize(),
                    orElse: () => null);
              }),
          BlocListener<DateTimeRangesManagerBloc, DateTimeRangesManagerState>(
            listener: (context, state) {
              state.maybeWhen(
                dateRangesLoaded: (dateExceptions) =>
                    scheduleConstraints.initDateRanges(dateExceptions),
                timeRangesLoaded: (timeExceptions) =>
                    scheduleConstraints.initTimeRanges(timeExceptions),
                orElse: () => null,
              );
            },
            child: Container(),
          )
        ],
        child: ChangeNotifierProvider.value(
            value: scheduleConstraints,
            child: Card(
              elevation: 2,
              color: ConstraintColors.surface,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () async {
                  if (taskId != null) {
                    await customShowModalBottomSheetDialog<ScheduleConstraintsVm>(
                      isRadiusAllowed: false,
                      backColor: ConstraintColors.surface,
                      context,
                      scheduleConstraints,
                      const ScheduleConstraintsUpsertFormWidget(),
                    );
                  } else {
                    await showFloatingCenteredDialog<void>(
                      context: context,
                      title: 'Notice',
                      message: 'Please complete the adding new task before defining constraints.',
                    );
                  }
                },
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: scheduleConstraints.isSelected.value
                            ? ConstraintColors.primary
                            : Colors.transparent,
                        width: 4,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Schedule Constraints',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600, color: ConstraintColors.secondary),
                        ),
                        const SizedBox(height: 16),
                        _buildConstraintSummary(),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }

  Widget _buildConstraintSummary() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Selector<ScheduleConstraintsVm, String>(
            selector: (_, vm) => vm.description,
            builder: (_, description, ___) {
              return _buildSummaryRow(
                icon: Icons.description,
                label: 'Description:',
                value: description.isNotEmpty ? description : 'No description',
                iconColor: Colors.grey[700],
              );
            }),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Selector<ScheduleConstraintsVm, DateTime?>(
                  selector: (_, vm) => vm.startAt,
                  builder: (_, startAt, ___) => _buildSummaryRow(
                        icon: Icons.timer,
                        label: 'Start:',
                        value: startAt?.formattedDate ?? 'Not set',
                        iconColor: ConstraintColors.time,
                      )),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Selector<ScheduleConstraintsVm, DateTime?>(
                  selector: (_, vm) => vm.endAt,
                  builder: (_, endAt, ___) => _buildSummaryRow(
                        icon: Icons.timer_off,
                        label: 'End:',
                        value: endAt?.formattedDate ?? 'Not set',
                        iconColor: ConstraintColors.time,
                      )),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Selector<ScheduleConstraintsVm, List<TimeRangeEntity>>(
          selector: (_, vm) => vm.timeRangeExceptions,
          builder: (_, timeRanges, ___) {
            return _buildConstraintChips(
              icon: Icons.access_time,
              label: 'Exception Times',
              items: timeRanges,
              color: ConstraintColors.time,
              formatter: (range) =>
                  '${range.start.toDayTime.toDayTimeString()} - ${range.end.toDayTime.toDayTimeString()}',
            );
          },
        ),
        Selector<ScheduleConstraintsVm, List<DateTime>>(
            selector: (_, vm) => vm.dateExceptions,
            builder: (_, dates, ___) {
              return _buildConstraintChips(
                icon: Icons.calendar_today,
                label: 'Exception Dates',
                items: dates,
                color: ConstraintColors.dates,
                formatter: (date) => date.toDateString,
              );
            }),
        Selector<ScheduleConstraintsVm, List<DateRangeEntity>>(
            selector: (_, vm) => vm.dateRangeExceptions,
            builder: (_, dateRanges, ___) {
              return _buildConstraintChips(
                icon: Icons.calendar_month,
                label: 'Exception Date Ranges',
                items: dateRanges,
                color: ConstraintColors.dateRanges,
                formatter: (range) => '${range.start!.toDateString} - ${range.end!.toDateString}',
              );
            }),
        Selector<ScheduleConstraintsVm, List<WeekDay>>(
            selector: (_, vm) => vm.weekDayExceptions,
            builder: (_, weekDays, ___) {
              return _buildConstraintChips(
                icon: Icons.calendar_view_week,
                label: 'Exception Weekdays',
                items: scheduleConstraints.weekDayExceptions,
                color: ConstraintColors.weekdays,
                formatter: (weekDay) => weekDay.name,
              );
            }),
        Selector<ScheduleConstraintsVm, List<int>>(
            selector: (_, vm) => vm.monthDayExceptions,
            builder: (_, monthDays, ___) {
              return _buildConstraintChips(
                icon: Icons.calendar_view_month,
                label: 'Exception Month Days',
                items: scheduleConstraints.monthDayExceptions,
                color: ConstraintColors.monthDays,
                formatter: (day) => '$day${_getOrdinalSuffix(day)}',
              );
            }),
      ],
    );
  }

  String _getOrdinalSuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  Widget _buildSummaryRow({
    required IconData icon,
    required String label,
    required String value,
    required Color? iconColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: iconColor),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: '$label ',
                  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[700]),
                ),
                TextSpan(
                  text: value,
                  style: TextStyle(
                      color: value == 'Not set' || value == 'No description'
                          ? Colors.grey
                          : Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildConstraintChips<T>({
    required IconData icon,
    required String label,
    required List<T> items,
    required String Function(T) formatter,
    required Color color,
  }) {
    if (items.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: color),
              const SizedBox(width: 8),
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: items
                .map((item) => Chip(
                      label: Text(
                        formatter(item),
                        style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w500),
                      ),
                      visualDensity: VisualDensity.compact,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      backgroundColor: color.withAlpha(25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: color.withAlpha(75)),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
