import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/constraints/schedule_constraints_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/scheduler/schedule_constraints_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/action_buttons.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/scheduler/schedule_constraints.dart/schedule_constraints_card.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/scheduler/schedule_constraints.dart/upsert_form.dart/schedule_exceptions_section.dart';

class ScheduleConstraintsUpsertFormWidget extends StatefulWidget {
  const ScheduleConstraintsUpsertFormWidget({super.key});

  @override
  State<ScheduleConstraintsUpsertFormWidget> createState() =>
      _ScheduleConstraintsUpsertFormWidgetState();
}

class _ScheduleConstraintsUpsertFormWidgetState extends State<ScheduleConstraintsUpsertFormWidget> {
  late final TextEditingController _descriptionController;

  ScheduleConstraintsManagerBloc get constraintsManagerBloc =>
      context.read<ScheduleConstraintsManagerBloc>();
  ScheduleConstraintsVm get scheduleConstraints => context.read<ScheduleConstraintsVm>();

  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController(
      text: scheduleConstraints.description,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        decoration: BoxDecoration(
          color: ConstraintColors.surface,
          borderRadius:
              constraints.maxHeight == context.mediaQueryHeight ? BorderRadius.circular(16) : null,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.edit_calendar, size: 28, color: ConstraintColors.primary),
                  const SizedBox(width: 12),
                  Text(
                    'Edit Schedule Constraints',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: ConstraintColors.secondary, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Description Card
              Card(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: ConstraintColors.secondary.withAlpha(200)),
                      ),
                      const SizedBox(height: 8),
                      TextField(
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
                        onChanged: (value) => scheduleConstraints.description = value,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Time Constraints Card
              Card(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionHeader('Date Constraints',
                          icon: Icons.timer, color: ConstraintColors.time),
                      const SizedBox(height: 16),
                      _buildDateRangeConstraints(),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Exception Rules Card
              Card(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionHeader('Exception Rules',
                          icon: Icons.block, color: ConstraintColors.error),
                      const SizedBox(height: 16),
                      const ScheduleExceptionSectionWidget(),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),
              ActionButtonsWidget(
                onDelete: () => constraintsManagerBloc
                    .add(ScheduleConstraintsManagerEvent.delete(scheduleConstraints.id!)),
                onSubmit: () => constraintsManagerBloc
                    .add(ScheduleConstraintsManagerEvent.create(scheduleConstraints.toEntity)),
                onUpdate: () => constraintsManagerBloc
                    .add(ScheduleConstraintsManagerEvent.update(scheduleConstraints.toEntity)),
                viewStates: scheduleConstraints.viewStates,
                onReset: scheduleConstraints.resetValues,
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildSectionHeader(String title, {required IconData icon, required Color color}) {
    return Row(
      children: [
        Icon(icon, size: 20, color: color),
        const SizedBox(width: 10),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w600, color: color),
        ),
      ],
    );
  }

  Widget _buildDateRangeConstraints() {
    return Row(
      children: [
        Expanded(
          child: Selector<ScheduleConstraintsVm, DateTime?>(
              selector: (_, vm) => vm.startAt,
              builder: (_, startAt, __) {
                return _buildDatePicker(
                  'Start Date',
                  startAt,
                  ConstraintColors.time,
                  (date) => scheduleConstraints.startAt = date,
                );
              }),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Selector<ScheduleConstraintsVm, DateTime?>(
              selector: (_, vm) => vm.endAt,
              builder: (_, endAt, __) {
                return _buildDatePicker(
                  'End Date',
                  endAt,
                  ConstraintColors.time,
                  (date) => scheduleConstraints.endAt = date,
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
                  currentDate?.formattedDate ?? 'Select date',
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

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }
}
