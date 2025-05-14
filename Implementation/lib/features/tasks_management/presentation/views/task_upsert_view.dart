import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:zamaan/core/localization/app_locale_keys.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/domain/enums/ui_entity_state.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/goal_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/sub_task_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/task/task_vm.dart';

class TaskUpsertView extends StatefulWidget {
  const TaskUpsertView({super.key, this.initialTask});

  final TaskVM? initialTask;

  @override
  State<TaskUpsertView> createState() => _TaskUpsertViewState();
}

class _TaskUpsertViewState extends State<TaskUpsertView> {
  TaskVM? _task;
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  Color _selectedColor = Colors.blue;
  IconData _selectedIcon = Icons.task;
  Priority _selectedPriority = Priority.medium;
  TaskStatus _selectedStatus = TaskStatus.scheduled;
  bool _archived = false;

  // Subtask fields
  final _subTaskTitleController = TextEditingController();
  Priority _subTaskPriority = Priority.medium;
  TaskStatus _subTaskStatus = TaskStatus.pending;
  Duration _subTaskDuration = Duration.zero;
  GoalVM? _subTaskGoal;

  // Task data
  final _categoryIds = <String>[];
  final _fixedTagIds = <String>[];
  final _scheduledDayIds = <String>[];
  final _scheduledIntervalIds = <String>[];
  String? _scheduleConstraintId;
  final _totalSpentTime = Duration.zero;

  // UI state
  String? _createdTaskId;

  late SubTaskVM? _newSubTask;

  @override
  Widget build(BuildContext context) {
    final isTaskTitleFilled = _titleController.text.trim().isNotEmpty;
    final isSubTaskTitleFilled = _subTaskTitleController.text.trim().isNotEmpty;

    return BlocListener<TasksManagerBloc, TasksManagerState>(
      listener: (context, state) {
        state.maybeWhen(
          taskCreated: (taskId) {
            setState(() {
              _createdTaskId = taskId;
              _task = _task!.copyWith(id: taskId);
              _createSubTask(context);
            });
          },
          subTaskCreated: (subTaskId) {
            final subTask = _newSubTask!.copyWith(id: subTaskId);
            setState(() {
              _task = _task!.copyWith(
                subTasks: List<SubTaskVM>.from(_task!.subTasks)..add(subTask),
              );
              _newSubTask = null;
              // Optionally show a snackbar or clear subtask fields
              _subTaskTitleController.clear();
              _subTaskPriority = Priority.medium;
              _subTaskStatus = TaskStatus.pending;
              _subTaskDuration = Duration.zero;
              _subTaskGoal = null;

              _updateTask(context);
            });
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.initialTask == null
                ? AppLocaleKeys.uiElements.titles.addNewTask
                : AppLocaleKeys.uiElements.titles.editTask,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Title'),
                  validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                  onChanged: (_) => setState(() {}),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Text('Color:'),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () async {
                        final color = await showDialog<Color>(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text('Pick a color'),
                            content: SingleChildScrollView(
                              child: BlockPicker(
                                pickerColor: _selectedColor,
                                onColorChanged: (c) => Navigator.of(context).pop(c),
                              ),
                            ),
                          ),
                        );
                        if (color != null) setState(() => _selectedColor = color);
                      },
                      child: CircleAvatar(backgroundColor: _selectedColor),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                DropdownButton<IconData>(
                  value: _selectedIcon,
                  items: [
                    Icons.task,
                    Icons.star,
                    Icons.work,
                    Icons.home,
                  ]
                      .map(
                        (icon) => DropdownMenuItem(
                          value: icon,
                          child: Icon(icon),
                        ),
                      )
                      .toList(),
                  onChanged: (icon) => setState(() => _selectedIcon = icon!),
                ),
                const SizedBox(height: 12),
                DropdownButton<Priority>(
                  value: _selectedPriority,
                  items: Priority.values
                      .map(
                        (p) => DropdownMenuItem(
                          value: p,
                          child: Text(p.name),
                        ),
                      )
                      .toList(),
                  onChanged: (p) => setState(() => _selectedPriority = p!),
                ),
                const SizedBox(height: 12),
                DropdownButton<TaskStatus>(
                  value: _selectedStatus,
                  items: TaskStatus.values
                      .map(
                        (s) => DropdownMenuItem(
                          value: s,
                          child: Text(s.name),
                        ),
                      )
                      .toList(),
                  onChanged: (s) => setState(() => _selectedStatus = s!),
                ),
                const SizedBox(height: 12),
                SwitchListTile(
                  title: const Text('Archived'),
                  value: _archived,
                  onChanged: (v) => setState(() => _archived = v),
                ),
                const Divider(height: 32),
                const Text('Add SubTask', style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  controller: _subTaskTitleController,
                  decoration: const InputDecoration(labelText: 'SubTask Title'),
                  onChanged: (_) => setState(() {}),
                ),
                DropdownButton<Priority>(
                  value: _subTaskPriority,
                  items: Priority.values
                      .map(
                        (p) => DropdownMenuItem(
                          value: p,
                          child: Text(p.name),
                        ),
                      )
                      .toList(),
                  onChanged: (p) => setState(() => _subTaskPriority = p!),
                ),
                DropdownButton<TaskStatus>(
                  value: _subTaskStatus,
                  items: TaskStatus.values
                      .map(
                        (s) => DropdownMenuItem(
                          value: s,
                          child: Text(s.name),
                        ),
                      )
                      .toList(),
                  onChanged: (s) => setState(() => _subTaskStatus = s!),
                ),
                Row(
                  children: [
                    // "OK" button: create task and its required subtask
                    if (_createdTaskId == null)
                      ElevatedButton.icon(
                        icon: Icon(widget.initialTask == null ? Icons.check : Icons.save),
                        label: Text(widget.initialTask == null ? 'OK' : 'Update'),
                        onPressed: (isTaskTitleFilled && isSubTaskTitleFilled)
                            ? () {
                                if (widget.initialTask == null) {
                                  _createTaskAndFirstSubTask(context);
                                } else {
                                  _updateTask(context); // Call update event
                                }
                              }
                            : null,
                      ),
                    // "Add to Task" button: add more subtasks after task created
                    if (_createdTaskId != null)
                      ElevatedButton.icon(
                        icon: const Icon(Icons.check),
                        label: const Text('Add to Task'),
                        onPressed: isSubTaskTitleFilled
                            ? () {
                                _createSubTask(
                                  context,
                                );
                              }
                            : null,
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                if (_task != null && _task!.subTasks.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pending SubTasks:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ..._task!.subTasks.map(
                        (st) => ListTile(
                          title: Text(st.title),
                          subtitle: Text('Priority: ${st.priority.name}'),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// Only keep one subtask in the pending list for the initial creation
  void _createTaskAndFirstSubTask(BuildContext context) {
    if (_formKey.currentState!.validate() && _subTaskTitleController.text.trim().isNotEmpty) {
      _task = TaskVM(
        title: _titleController.text,
        color: _selectedColor,
        icon: _selectedIcon,
        priority: _selectedPriority,
        categoryIds: _categoryIds,
        fixedTagIds: _fixedTagIds,
        totalSpentTime: _totalSpentTime,
        subTasks: <SubTaskVM>[],
        goal: null,
        archived: _archived,
        taskStatus: _selectedStatus,
        scheduleConstraintId: _scheduleConstraintId,
        scheduledDayIds: _scheduledDayIds,
        scheduledIntervalIds: _scheduledIntervalIds,
      );

      context.read<TasksManagerBloc>().add(
            TasksManagerEvent.createTask(newTask: _task!),
          );
    }
  }

  void _createSubTask(
    BuildContext context,
  ) {
    if (_createdTaskId != null) {
      _newSubTask = SubTaskVM(
        title: _subTaskTitleController.text,
        totalSpentTime: _subTaskDuration,
        priority: _subTaskPriority,
        status: _subTaskStatus,
        goal: _subTaskGoal ?? GoalVM(),
        entityState: VMEntityState.newEntity,
        taskId: _createdTaskId!, // Use the created task ID if available, else null
      );
      context.read<TasksManagerBloc>().add(
            TasksManagerEvent.createSubTask(newSubTask: _newSubTask!),
          );
    }
  }

  void _updateTask(BuildContext context) {
    context.read<TasksManagerBloc>().add(
          TasksManagerEvent.updateTask(task: _task!),
        );
  }
}
