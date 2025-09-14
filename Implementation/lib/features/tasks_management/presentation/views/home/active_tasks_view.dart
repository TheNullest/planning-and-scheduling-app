import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/core/constants/hero_tags.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/categories/categories_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/scheduler/scheduled_day_time/scheduled_day_time_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tags/tags_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/coordinators/tasks_coordinator_manager/task_coordinators_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tasks_overview/task_overview_list_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_coordiantor_list_item_widget.dart';

class ActiveTasksView extends StatefulWidget {
  const ActiveTasksView({super.key});

  @override
  State<ActiveTasksView> createState() => _ActiveTasksViewState();
}

class _ActiveTasksViewState extends State<ActiveTasksView> {
  String? _expandedTaskId;
  final _taskCoordinatorsManager = TaskCoordinatorsManager();
  late List<TaskOverviewListItemVm> _taskCoordinatorListItemVms = [];

  @override
  void initState() {
    super.initState();
    _initData();
  }

  void _initData() {
    context.read<CategoriesManagerBloc>().add(const CategoriesManagerEvent.get());
    context.read<TagsManagerBloc>().add(const TagsManagerEvent.get());
    context.read<TasksManagerBloc>().add(const TasksManagerEvent.started());
  }

  void _getData() {
    for (final taskId in _taskCoordinatorsManager.taskIds) {
      {
        // ScheduledDayTimes
        context
            .read<ScheduledDayTimesManagerBloc>()
            .add(ScheduledDayTimesManagerEvent.getScheduledDayTimesByTaskId(taskId: taskId));

        //TODO[IMPLEMENT]: get ScheduledIntervals based on taskId
        //TODO[IMPLEMENT]: get ScheduledOccurrences as scheduled fixDateTimes based on taskId
        //TODO[IMPLEMENT]: get Goals based on taskId
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<CategoriesManagerBloc, CategoriesManagerState>(
              listener: (context, state) => state.maybeWhen(
                  loaded: (categories) => _taskCoordinatorsManager.categories
                    ..clear()
                    ..addAll(categories),
                  orElse: () => null)),
          BlocListener<TagsManagerBloc, TagsManagerState>(
              listener: (context, state) => state.maybeWhen(
                  loaded: (tags) => _taskCoordinatorsManager.tags
                    ..clear()
                    ..addAll(tags),
                  orElse: () => null)),
          BlocListener<TasksManagerBloc, TasksManagerState>(
              listener: (context, state) => state.maybeWhen(
                  loadedTasks: (tasks, subTasks) {
                    _taskCoordinatorsManager
                      ..clear()
                      ..setCoordinators(tasks, subTasks);
                    _getData();
                    return null;
                  },
                  orElse: () => null)),
          BlocListener<ScheduledDayTimesManagerBloc, ScheduledDayTimesManagerState>(
              listener: (context, state) => state.maybeWhen(
                  loadedByTaskId: (scheduleds) {
                    if (scheduleds.isNotEmpty) {
                      _taskCoordinatorsManager.attachScheduledDayTimes(
                          scheduleds.first.taskId, scheduleds);
                    }
                    _taskCoordinatorListItemVms = _taskCoordinatorsManager.toOverviewLisItems;
                    setState(() {});
                    return null;
                  },
                  orElse: () => null))
        ],
        child: ListView.builder(
          itemCount: _taskCoordinatorListItemVms.length,
          itemBuilder: (context, index) {
            final viewModel = _taskCoordinatorListItemVms[index];

            return TaskCoordinatorListItemWidget(
              viewModel: viewModel,
              isInitiallyExpanded: _expandedTaskId == viewModel.id,
              isSelected: _expandedTaskId == viewModel.id,
              onTap: () => {},
              onToggleExpand: (taskId) {
                setState(() {
                  _expandedTaskId = taskId;
                });
              },
              onEdit: () => _taskCoordinatorsManager.getTaskCoordinator(viewModel.id),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: HeroTagConstants.refreshActiveTasks,
        onPressed: _initData,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
