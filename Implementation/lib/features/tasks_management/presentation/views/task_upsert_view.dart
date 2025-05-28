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
  late final TaskUpsertVM taskUpsertVM;
  late final TasksManagerBloc tasksManagerBloc;
  @override
  void initState() {
    super.initState();
    tasksManagerBloc = context.read<TasksManagerBloc>();
    taskUpsertVM = context.read<TaskUpsertVM>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TasksManagerBloc, TasksManagerState>(
      listener: (context, state) {
        state.maybeWhen(
          taskCreated: (taskId) {
            taskUpsertVM.handleTaskCreated(taskId);
            tasksManagerBloc.add(
              TasksManagerEvent.createSubTask(
                newSubTask:
                    taskUpsertVM.subTasksManager.subTaskVMs.first.subTaskFormController.toEntity,
              ),
            );
          },
          taskUpdated: () => taskUpsertVM.handleTaskUpdated(),
          subTaskCreated: (subTaskId) =>
              taskUpsertVM.subTasksManager.handleSubTaskCreated(subTaskId),
          subTaskDeleted: (subTaskId) =>
              taskUpsertVM.subTasksManager.handleSubTaskDeleted(subTaskId),
          subTaskUpdated: (subTaskId) =>
              taskUpsertVM.subTasksManager.handleSubTaskUpdated(subTaskId),
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
                value: taskUpsertVM.taskFormController,
                child: const TaskFormWidget(),
              ),
              32.sliverSizedBoxHeight,

              // Button row for submitting/updating the subtask.
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                sliver: ChangeNotifierProvider<TaskUpsertFormStates>.value(
                  value: taskUpsertVM.taskUpsertFormStates,
                  child: Consumer<TaskUpsertFormStates>(
                    builder: (context, formStates, _) => SliverToBoxAdapter(
                      child: Row(
                        children: [
                          // Upsert Button
                          ElevatedButton.icon(
                            icon: Icon(formStates.actionButtonIcon),
                            label: Text(formStates.actionButtonTitle),
                            onPressed: formStates.isUpsertButtonActive
                                ? () {
                                    final entity = taskUpsertVM.taskFormController.toEntity;
                                    final evetn = taskUpsertVM.isItNew
                                        ? TasksManagerEvent.createTask(
                                            newTask: entity,
                                          )
                                        : TasksManagerEvent.updateTask(
                                            task: entity,
                                          );

                                    tasksManagerBloc.add(evetn);
                                  }
                                : null,
                          ),

                          // Back Button
                          ElevatedButton.icon(
                            icon: Icon(formStates.backButtonIcon),
                            label: Text(formStates.backButtonTitle),
                            onPressed: () => Navigator.pop(context),
                          ),

                          // Reset Button
                          ElevatedButton.icon(
                            icon: Icon(formStates.resetButtonIcon),
                            label: Text(formStates.resetButtonTitle),
                            onPressed: formStates.isResetButtonActive
                                ? () => taskUpsertVM.taskFormController.resetValues()
                                : null,
                          ),

                          // Delete Button
                          ElevatedButton.icon(
                            icon: Icon(formStates.deleteButtonIcon),
                            label: Text(formStates.deleteButtonTitle),
                            onPressed: () => tasksManagerBloc.add(
                              TasksManagerEvent.deleteTask(
                                taskId: taskUpsertVM.taskFormController.id,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Spacer
              12.sliverSizedBoxHeight,

              // SubTasks list
              ChangeNotifierProvider<SubTasksManager>.value(
                value: taskUpsertVM.subTasksManager,
                child: const SubTasksListWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
