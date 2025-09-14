import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/constraint_date_time_ranges/constraint_date_time_ranges_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/schedule_constraints_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/schedule_constraints.dart/upsert_form.dart/schedule_exceptions_section.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';
import 'package:zamaan/presentation_shared/widgets/action_buttons.dart';
import 'package:zamaan/presentation_shared/widgets/section.dart';

class ScheduleConstraintsUpsertFormView extends StatefulWidget {
  const ScheduleConstraintsUpsertFormView({super.key});

  @override
  State<ScheduleConstraintsUpsertFormView> createState() =>
      _ScheduleConstraintsUpsertFormViewState();
}

class _ScheduleConstraintsUpsertFormViewState extends State<ScheduleConstraintsUpsertFormView> {
  late final TextEditingController _descriptionController;

  ScheduleConstraintsManagerBloc get _constraintsManagerBloc =>
      context.read<ScheduleConstraintsManagerBloc>();
  ConstraintDateTimeRangesManagerBloc get _constraintDateTimeRangesManagers =>
      context.read<ConstraintDateTimeRangesManagerBloc>();

  ScheduleConstraintsVm get _scheduleConstraints => context.read<ScheduleConstraintsVm>();

  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController(
      text: _scheduleConstraints.description,
    );
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  void _onCreate(String id) {
    _scheduleConstraints.onEntityCreated();
    _constraintDateTimeRangesManagers
      ..add(ConstraintDateTimeRangesManagerEvent.createBatchTimeRanges(
          _scheduleConstraints.getTimeRangeAsEntities))
      ..add(ConstraintDateTimeRangesManagerEvent.createBatchDateRanges(
          _scheduleConstraints.getDateRangeAsEntities));
  }

  void _onUpdate(ScheduleConstraintsEntity updatedConstraints) {
    _scheduleConstraints.onEntityUpdated(updatedConstraints);
    final updatedData = _scheduleConstraints.onUpdating;
    if (updatedData.addedexceptionTimes.isNotEmpty) {
      _constraintDateTimeRangesManagers.add(
          ConstraintDateTimeRangesManagerEvent.createBatchTimeRanges(
              updatedData.addedexceptionTimes));
    }
    if (updatedData.addedexceptionDates.isNotEmpty) {
      _constraintDateTimeRangesManagers.add(
          ConstraintDateTimeRangesManagerEvent.createBatchDateRanges(
              updatedData.addedexceptionDates));
    }

    if (updatedData.updatedexceptionTimes.isNotEmpty) {
      _constraintDateTimeRangesManagers.add(
          ConstraintDateTimeRangesManagerEvent.updateTimeRanges(updatedData.updatedexceptionTimes));
    }
    if (updatedData.updatedexceptionDates.isNotEmpty) {
      _constraintDateTimeRangesManagers.add(
          ConstraintDateTimeRangesManagerEvent.updateDateRanges(updatedData.updatedexceptionDates));
    }

    if (updatedData.deletedexceptionTimes.isNotEmpty) {
      _constraintDateTimeRangesManagers.add(
          ConstraintDateTimeRangesManagerEvent.deleteTimeRanges(updatedData.deletedexceptionTimes));
    }
    if (updatedData.deletedexceptionDates.isNotEmpty) {
      _constraintDateTimeRangesManagers.add(
          ConstraintDateTimeRangesManagerEvent.deleteDateRanges(updatedData.deletedexceptionDates));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScheduleConstraintsManagerBloc, ScheduleConstraintsManagerState>(
      listenWhen: (oldState, currentState) =>
          oldState.runtimeType != currentState.runtimeType || oldState != currentState,
      listener: (context, state) {
        state.maybeWhen(
            created: (id) => _onCreate(id),
            updated: (updatedConstraints) => _onUpdate(updatedConstraints),
            deleted: () => _scheduleConstraints.initialize(),
            orElse: () => null);
      },
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            color: ElementaryColors.surface,
            borderRadius: constraints.maxHeight == context.mediaQueryHeight
                ? BorderRadius.circular(16)
                : null,
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Description Card
                SectionWidget(
                  headerText: 'Description',
                  headerIcon: Icons.description,
                  child: Selector<ScheduleConstraintsVm, bool>(
                      selector: (_, vm) => vm.shouldResetInputs,
                      builder: (_, __, ___) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          _descriptionController.text = _scheduleConstraints.description;
                        });
                        return TextField(
                          controller: _descriptionController,
                          decoration: InputDecoration(
                            hintText: 'Add constraint description...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey.shade300),
                            ),
                            filled: true,
                            fillColor: Colors.grey[50],
                          ),
                          style: const TextStyle(
                            color: Colors.black87, // <-- darker text color
                          ),
                          maxLines: 2,
                          onChanged: (value) => _scheduleConstraints.description = value,
                        );
                      }),
                ),

                const SizedBox(height: 20),

                // Date Constraints Card
                SectionWidget(
                  headerText: 'Date Constraints',
                  headerIcon: Icons.timer,
                  headerColor: ElementaryColors.time,
                  child: _buildDateRangeConstraints(),
                ),

                const SizedBox(height: 20),

                // Exception Rules Card
                const SectionWidget(
                  headerText: 'Exception Rules',
                  headerIcon: Icons.block,
                  headerColor: ElementaryColors.error,
                  child: ScheduleExceptionSectionWidget(),
                ),

                const SizedBox(height: 24),
                ActionButtonsWidget(
                  onDelete: () => _constraintsManagerBloc
                      .add(ScheduleConstraintsManagerEvent.delete(_scheduleConstraints.id!)),
                  onSubmit: () => _constraintsManagerBloc
                      .add(ScheduleConstraintsManagerEvent.create(_scheduleConstraints.toEntity)),
                  onUpdate: () => _constraintsManagerBloc
                      .add(ScheduleConstraintsManagerEvent.update(_scheduleConstraints.toEntity)),
                  viewStates: _scheduleConstraints.viewStates,
                  isNewItem: _scheduleConstraints.isNewItem.value,
                  onReset: _scheduleConstraints.resetValues,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildDateRangeConstraints() {
    return Row(
      children: [
        Expanded(
          child: Selector<ScheduleConstraintsVm, DateTime?>(
              selector: (_, vm) => vm.startDate,
              builder: (_, startTime, __) {
                return _buildDatePicker(
                  'Start Date',
                  startTime,
                  ElementaryColors.time,
                  (date) => _scheduleConstraints.startDate = date,
                );
              }),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Selector<ScheduleConstraintsVm, DateTime?>(
              selector: (_, vm) => vm.endDate,
              builder: (_, endTime, __) {
                return _buildDatePicker(
                  'End Date',
                  endTime,
                  ElementaryColors.time,
                  (date) => _scheduleConstraints.endDate = date,
                );
              }),
        ),
      ],
    );
  }

  Widget _buildDatePicker(
    String label,
    DateTime? currentDate,
    Color color,
    ValueChanged<DateTime> onDateSelected,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w500, color: color),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: currentDate ?? DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              builder: (context, child) => Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.light(
                    primary: color,
                  ),
                ),
                child: child!,
              ),
            );
            if (date != null) onDateSelected(date);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[50],
            ),
            child: Row(
              children: [
                Icon(Icons.calendar_today, size: 20, color: color),
                const SizedBox(width: 12),
                Text(
                  currentDate?.toDateString ?? 'Select date',
                  style: TextStyle(
                      color: currentDate == null ? Colors.grey : color,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
