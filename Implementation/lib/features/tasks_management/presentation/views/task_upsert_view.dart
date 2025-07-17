import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/constants/routes/app_route_configs.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/navigation_argument_models/task_upsert.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/sub_task_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/action_buttons.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/scheduler/schedule_constraints.dart/schedule_constraints_card.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/sub_tasks_list.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/task_upsert_form.dart';

class TaskUpsertView extends StatelessWidget {
  const TaskUpsertView({
    required this.arguments,
    super.key,
  });
  final TaskUpsertNavigationArguments arguments;
  @override
  Widget build(BuildContext context) {
    final taskEntity = arguments.getExtraArgument(#taskEntity) as TaskEntity?;
    final subTaskEntities = arguments.getExtraArgument(#subTaskEntities) as List<SubTaskEntity>?;
    final taskUpsertVM = taskEntity != null
        ? TaskUpsertVM.fromEntity(task: taskEntity, subTasks: subTaskEntities!)
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
          taskCreated: (id) => taskUpsertVM.handleEntityCreated(id),
          taskUpdated: (task) => taskUpsertVM.handleEntityUpdated(task),
          taskDeleted: (_) => Navigator.pop(context),
          subTaskCreated: (subTask) => taskUpsertVM.subTasksManager.addNewPersistedItem(subTask),
          subTaskDeleted: (id) {
            taskUpsertVM.subTasksManager.removeFromItems(id);
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
            selector: (_, vm) => vm.viewStates.isItNew,
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
            const SliverToBoxAdapter(child: ScheduleConstraintsCard()),
            // Button row for submitting/updating the subtask.
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              sliver: SliverToBoxAdapter(
                child: ActionButtonsWidget(
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
                ),
              ),
            ),

            // Spacer
            12.sliverSizedBoxHeight,

            // SubTasks list
            SliverToBoxAdapter(
              child: Selector<TaskUpsertVM, SubTaskVMsManager>(
                  selector: (_, vm) => vm.subTasksManager,
                  builder: (_, subTasksManager, __) =>
                      ChangeNotifierProvider<SubTaskVMsManager>.value(
                        value: subTasksManager,
                        child: const SubTasksListWidget(),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
