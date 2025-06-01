import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/core/localization/app_locale_keys.dart';
import 'package:zamaan/features/tasks_management/presentation/argument_models/task_upsert_arguments.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/states/task_upsert_form_states.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/sub_tasks_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/task_form_controller.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/sub_tasks_list.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/task_form.dart';

import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/task_upsert_action_buttons.dart';

class TaskUpsertView extends StatelessWidget {
  const TaskUpsertView({
    super.key,
    this.arguments,
  });
  final TaskUpsertArguments? arguments;
  @override
  Widget build(BuildContext context) {
    final taskUpsertVM = arguments != null
        ? TaskUpsertVM.fromEntity(task: arguments!.task, subTasks: arguments!.subTasks)
        : TaskUpsertVM();

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
  late final TaskUpsertVM _taskUpsertVM;
  late final TasksManagerBloc _tasksManagerBloc;
  @override
  void initState() {
    super.initState();
    _tasksManagerBloc = context.read<TasksManagerBloc>();
    _taskUpsertVM = context.read<TaskUpsertVM>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TasksManagerBloc, TasksManagerState>(
      listener: (context, state) {
        state.maybeWhen(
          taskCreated: (taskId) {
            _taskUpsertVM.handleTaskCreated(taskId);
            _tasksManagerBloc.add(
              TasksManagerEvent.createSubTask(
                newSubTask:
                    _taskUpsertVM.subTasksManager.subTaskVMs.first.subTaskFormController.toEntity,
              ),
            );
          },
          taskUpdated: () => _taskUpsertVM.handleTaskUpdated(),
          subTaskCreated: (subTaskId) =>
              _taskUpsertVM.subTasksManager.handleSubTaskCreated(subTaskId),
          subTaskDeleted: (subTaskId) =>
              _taskUpsertVM.subTasksManager.handleSubTaskDeleted(subTaskId),
          subTaskUpdated: (subTaskId) =>
              _taskUpsertVM.subTasksManager.handleSubTaskUpdated(subTaskId),
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Selector<TaskUpsertVM, bool>(
            selector: (_, vm) => vm.isItNew,
            builder: (context, isNew, _) => Text(
              isNew
                  ? AppLocaleKeys.uiElements.titles.addNewTask
                  : AppLocaleKeys.uiElements.titles.editTask,
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Form(
          key: GlobalKey<FormState>(),
          child: CustomScrollView(
            slivers: [
              ChangeNotifierProvider<TaskFormController>.value(
                value: _taskUpsertVM.taskFormController,
                child: const TaskFormWidget(),
              ),
              32.sliverSizedBoxHeight,

              // Button row for submitting/updating the subtask.
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                sliver: ChangeNotifierProvider<TaskUpsertFormStates>.value(
                  value: _taskUpsertVM.taskUpsertFormStates,
                  child: SliverToBoxAdapter(
                    child: TaskUpsertActionButtons(
                      onInsert: () => _tasksManagerBloc.add(
                        TasksManagerEvent.createTask(
                          newTask: _taskUpsertVM.taskFormController.toEntity,
                        ),
                      ),
                      onUpdate: () => _tasksManagerBloc.add(
                        TasksManagerEvent.updateTask(
                          task: _taskUpsertVM.taskFormController.toEntity,
                        ),
                      ),
                      onReset: () => _taskUpsertVM.taskFormController.resetValues(),
                      onDelete: () => _tasksManagerBloc.add(
                        TasksManagerEvent.deleteTask(
                          taskId: _taskUpsertVM.taskFormController.id!,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Spacer
              12.sliverSizedBoxHeight,

              // SubTasks list
              ChangeNotifierProvider<SubTasksManager>.value(
                value: _taskUpsertVM.subTasksManager,
                child: const SubTasksListWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
