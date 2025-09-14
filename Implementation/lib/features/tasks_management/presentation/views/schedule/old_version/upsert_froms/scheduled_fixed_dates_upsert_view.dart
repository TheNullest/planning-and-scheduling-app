import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/scheduled_occurrence/scheduled_occurrences_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/schedule/manager_vms/old_version/scheduled_fixed_dates_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/views/schedule/old_version/upsert_froms/base_upsert_view.dart';

class ScheduledFixedDatesUpsertView extends StatefulWidget {
  const ScheduledFixedDatesUpsertView({super.key});

  @override
  State<ScheduledFixedDatesUpsertView> createState() => _ScheduledFixedDatesUpsertViewState();
}

class _ScheduledFixedDatesUpsertViewState extends State<ScheduledFixedDatesUpsertView> {
  late final ScheduledFixedDatesUpsertVm _upsertFormVm;
  late final ScheduledOccurrencesManagerBloc _managerBloc;

  @override
  void initState() {
    super.initState();
    _managerBloc = context.read<ScheduledOccurrencesManagerBloc>();
    _upsertFormVm = context.read<ScheduledFixedDatesUpsertVm>();
  }

  @override
  void dispose() {
    _upsertFormVm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScheduledOccurrencesManagerBloc, ScheduledOccurrencesManagerState>(
      listener: (context, state) => state.maybeWhen(
          // createBatchSuccess: (createdEntities) => _upsertFormVm.onEntitiesCreated(''),
          // updateBatchSuccess: (updatedEntities) => _upsertFormVm.onEntitiesUpdated(updatedEntities),
          deleteBatchSuccess: (ids) => _upsertFormVm.onEntitiesDeleted(ids),
          orElse: () => null),
      child: Selector<ScheduledFixedDatesUpsertVm, bool>(
          selector: (_, vm) => vm.shouldResetInputs,
          builder: (context, _, __) => BaseScheduleUpsertView<ScheduledFixedDatesUpsertVm>(
                option: Row(
                  children: [
                    const Text('Repeat count :'),
                    8.sizedBoxWidth,
                  ],
                ),
                isMultiSelect: false,
                onDescriptionChanged: (description) => _upsertFormVm.description = description,
                description: _upsertFormVm.description,
                scheduledTimesListSelector: (context, vm) => vm.scheduledTimes,
                timeModeSelector: (context, vm) => vm.timeMode,
                onTimeModeChanged: (timeMode) => _upsertFormVm.timeMode = timeMode,
                onSoftRemoveScheduledTimeChanged: _upsertFormVm.modifySoftRemoveScheduledTime,
                onEditScheduledTime: _upsertFormVm.onEditScheduledTime,
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
    _managerBloc.add(ScheduledOccurrencesManagerEvent.createBatch(entities));
  }

  void _onUpdate() {
    final removableItems = _upsertFormVm.getSoftRemovedItems.map((item) => item.id).toList();
    _managerBloc
      ..add(ScheduledOccurrencesManagerEvent.updateBatch(_upsertFormVm.toEntities))
      ..add(ScheduledOccurrencesManagerEvent.deleteBatch(removableItems));
  }

  void _onDeleteSelectedDayItems() =>
      _managerBloc.add(ScheduledOccurrencesManagerEvent.deleteBatch(_upsertFormVm.getItemsId));
}
