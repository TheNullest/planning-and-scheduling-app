import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/manager_vms/old_version/scheduled_day_time_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/views/schedule/old_version/upsert_froms/base_upsert_view.dart';
import 'package:zamaan/presentation_shared/widgets/input_number_field.dart';

class ScheduledDayTimeUpsertFormView extends StatefulWidget {
  const ScheduledDayTimeUpsertFormView({this.isMultiSelect = false, super.key});

  final bool isMultiSelect;

  @override
  State<ScheduledDayTimeUpsertFormView> createState() => _ScheduledDayTimeUpsertFormViewState();
}

class _ScheduledDayTimeUpsertFormViewState extends State<ScheduledDayTimeUpsertFormView> {
  late final ScheduledDayTimeUpsertVm _upsertFormVm;
  late final ScheduledDayTimesManagerBloc _dayTimesManagerBloc;

  @override
  void initState() {
    super.initState();
    _dayTimesManagerBloc = context.read<ScheduledDayTimesManagerBloc>();
    _upsertFormVm = context.read<ScheduledDayTimeUpsertVm>();
  }

  @override
  void dispose() {
    _upsertFormVm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScheduledDayTimesManagerBloc, ScheduledDayTimesManagerState>(
      listener: (context, state) => state.maybeWhen(
          created: (createdEntities) => _upsertFormVm.onEntitiesUpserted(createdEntities),
          updated: (updatedEntities) =>
              _upsertFormVm.onEntitiesUpserted(updatedEntities, isOnCreate: false),
          deleted: (ids) => _upsertFormVm.onEntitiesDeleted(ids),
          orElse: () => null),
      child: Selector<ScheduledDayTimeUpsertVm, bool>(
          selector: (_, vm) => vm.shouldResetInputs,
          builder: (context, _, __) => BaseScheduleUpsertView<ScheduledDayTimeUpsertVm>(
                option: Row(
                  children: [
                    const Text('Repeat count :'),
                    8.sizedBoxWidth,
                    Selector<ScheduledDayTimeUpsertVm, bool>(
                        selector: (_, vm) => vm.shouldResetInputs,
                        builder: (context, _, __) {
                          return NumberInputField(
                            initialValue: _upsertFormVm.repeatCount,
                            onChanged: (value) {
                              _upsertFormVm.repeatCount = value;
                            },
                          );
                        }),
                  ],
                ),
                isMultiSelect: widget.isMultiSelect,
                onDescriptionChanged: (description) => _upsertFormVm.description = description,
                description: _upsertFormVm.description,
                scheduledTimesListSelector: (context, vm) => vm.scheduledTimes,
                timeModeSelector: (context, vm) => vm.timeMode,
                onTimeModeChanged: (timeMode) => _upsertFormVm.timeMode = timeMode,
                onSoftRemoveScheduledTimeChanged: _upsertFormVm.modifySoftRemoveScheduledTime,
                onEditScheduledTime: (timeRange) => _upsertFormVm.onEditScheduledTime(timeRange),
                addNewTimeRange: _upsertFormVm.addScheduledTime,
                scheduledTimesList: _upsertFormVm.scheduledTimes,
                exceptionTimeRanges: _upsertFormVm.exceptionTimeRanges,
                onUpdate: _onUpdate,
                onSubmit: _onSubmit,
                onDelete: _onDeleteSelectedDayItems,
                onReset: _upsertFormVm.resetValues,
                viewState: _upsertFormVm.viewStates,
                isNewItem: (context, vm) => vm.isNewItem.value,
                shouldResetInputs: (context, vm) => vm.shouldResetInputs,
              )),
    );
  }

  void _onSubmit() {
    final entities = _upsertFormVm.toEntities;
    _dayTimesManagerBloc
        .add(ScheduledDayTimesManagerEvent.createBatchScheduledDayTimes(days: entities));
  }

  void _onUpdate() {
    final removableItems = _upsertFormVm.getSoftRemovedItems.map((item) => item.id).toList();
    _dayTimesManagerBloc.add(ScheduledDayTimesManagerEvent.updateScheduledDayTimes(
        days: _upsertFormVm.toEntities, deleteDayTimes: removableItems));
  }

  void _onDeleteSelectedDayItems() =>
      _dayTimesManagerBloc.add(ScheduledDayTimesManagerEvent.deleteBatch(_upsertFormVm.getItemsId));
}
