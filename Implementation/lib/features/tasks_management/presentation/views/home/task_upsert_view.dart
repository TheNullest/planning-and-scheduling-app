import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/constants/routes/app_route_configs.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/coordinators/task_coordinator/task_coordinator.dart';
import 'package:zamaan/features/tasks_management/presentation/navigation_argument_models/task_upsert.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/schedule_constraints.dart/schedule_constraints_overview.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/schedule/scheduled/overview/scheduled_overview_card.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/sub_tasks_list.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/task_upsert_form.dart';
import 'package:zamaan/presentation_shared/widgets/action_buttons.dart';

class TaskUpsertView extends StatelessWidget {
  const TaskUpsertView({
    required this.arguments,
    super.key,
  });
  final TaskUpsertNavigationArguments arguments;
  @override
  Widget build(BuildContext context) {
    final taskCoordinator = arguments.getExtraArgument(#taskCoordinator) as TaskCoordinator?;
    final taskUpsertVM = taskCoordinator != null
        ? TaskUpsertVM.fromEntity(task: taskCoordinator.task, subTasks: taskCoordinator.subTasks)
        : TaskUpsertVM(userId: context.currentUserId);

    return ChangeNotifierProvider<TaskUpsertVM>(
      create: (_) => taskUpsertVM,
      child: const _TaskUpsertForm(),
    );
  }
}

class _TaskUpsertForm extends StatefulWidget {
  const _TaskUpsertForm();

  @override
  State<_TaskUpsertForm> createState() => _TaskUpsertFormState();
}

class _TaskUpsertFormState extends State<_TaskUpsertForm> {
  late final TaskUpsertVM taskUpsertVM;
  late final TasksManagerBloc taskManagerBloc;
  @override
  void initState() {
    super.initState();
    taskUpsertVM = context.read<TaskUpsertVM>();
    taskManagerBloc = context.read<TasksManagerBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TasksManagerBloc, TasksManagerState>(
      listenWhen: (pervious, current) => current != pervious,
      listener: (context, state) {
        state.maybeWhen(
          taskCreated: (id) => taskUpsertVM.onEntityCreated(),
          taskUpdated: (task) => taskUpsertVM.onEntityUpdated(task),
          taskDeleted: (_) => Navigator.pop(context),
          subTaskCreated: (subTask) => taskUpsertVM.subTasksManager.onEntityCreated(subTask),
          subTaskDeleted: (_) {
            taskUpsertVM.subTasksManager.clearSoftRemovedItems();
            Navigator.pop(context);
          },
          subTaskUpdated: (subTask) => taskUpsertVM.subTasksManager.itemIsUpdated(subTask),
          loading: () => const Center(child: CircularProgressIndicator()),
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Selector<TaskUpsertVM, bool>(
            selector: (_, vm) => vm.isNewItem.value,
            builder: (context, isNew, _) {
              final upsertConfig = isNew ? AppRouteConfigs.addNewTask : AppRouteConfigs.editTask;

              return Row(
                children: [
                  Icon(upsertConfig.icon),
                  Text(upsertConfig.titleKey),
                  const Spacer(),
                  IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close))
                ],
              );
            },
          ),
          automaticallyImplyLeading: false,
        ),
        body: CustomScrollView(
          slivers: [
            const TaskUpsertFormWidget(),
            32.sliverSizedBoxHeight,
            SliverToBoxAdapter(
              child: Selector<TaskUpsertVM, bool>(
                  selector: (_, vm) => vm.isNewItem.value,
                  builder: (_, isItNew, __) {
                    return isItNew
                        ? const Text('At first should define a new task')
                        : const Column(
                            children: [
                              //TODO[Refactor]: should provide task cordiantor or something like that to use multi blocs listener,
                              // to initiate widgets requiremend such as timeRangeExcetpions
                              TaskSchedulingConstraintsOverview(),
                              ScheduledOverviewCard(),
                            ],
                          );
                  }),
            ),
            // Button row for submitting/updating the subtask.
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              sliver: SliverToBoxAdapter(
                child: Selector<TaskUpsertVM, bool>(
                    selector: (_, vm) => vm.isNewItem.value,
                    builder: (context, isNewItem, __) {
                      return ActionButtonsWidget(
                        isNewItem: isNewItem,
                        viewStates: taskUpsertVM.viewStates,
                        onSubmit: () => taskManagerBloc.add(
                          TasksManagerEvent.createTask(
                            newTask: taskUpsertVM.toEntity,
                          ),
                        ),
                        onUpdate: () => taskManagerBloc.add(
                          TasksManagerEvent.updateTask(
                            task: taskUpsertVM.toEntity,
                          ),
                        ),
                        onReset: taskUpsertVM.resetValues,
                        onDelete: () {
                          taskManagerBloc.add(
                            TasksManagerEvent.deleteTask(
                              taskId: taskUpsertVM.id!,
                            ),
                          );
                        },
                      );
                    }),
              ),
            ),

            // Spacer
            12.sliverSizedBoxHeight,

            // SubTasks list
            SliverToBoxAdapter(
              child: ChangeNotifierProvider<SubTaskVMsManager>.value(
                value: taskUpsertVM.subTasksManager,
                child: const SubTasksListWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
