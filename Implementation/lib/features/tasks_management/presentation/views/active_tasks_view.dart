import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/core/constants/hero_tags.dart';
import 'package:zamaan/core/constants/routes/app_route_configs.dart';
import 'package:zamaan/core/utils/navigator.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/models/entities/task/task_vm.dart';
// ...existing imports...

class ActiveTasksView extends StatefulWidget {
  const ActiveTasksView({super.key});

  @override
  State<ActiveTasksView> createState() => _ActiveTasksViewState();
}

class _ActiveTasksViewState extends State<ActiveTasksView> {
  String? _expandedTaskId;

  @override
  void initState() {
    super.initState();
    context.read<TasksManagerBloc>().add(const TasksManagerEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TasksManagerBloc, TasksManagerState>(
        builder: (context, state) {
          return state.maybeWhen(
            fetchedTasks: (tasks) {
              if (tasks.isEmpty) {
                return const Center(child: Text('No active tasks.'));
              }
              return ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  final isExpanded = _expandedTaskId == task.id;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: task.color,
                          child: Icon(task.icon, color: Colors.white),
                        ),
                        title: Text(task.title),
                        subtitle: Text('Priority: ${task.priority.name}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (task.archived) const Icon(Icons.archive, color: Colors.grey),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              tooltip: 'Delete Task',
                              onPressed: () {
                                context.read<TasksManagerBloc>().add(
                                      TasksManagerEvent.deleteTask(task: task),
                                    );
                              },
                            ),
                            Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                          ],
                        ),
                        onTap: () {
                          setState(() {
                            _expandedTaskId = isExpanded ? null : task.id;
                          });
                        },
                        onLongPress: () {
                          _openEditTask(context, task);
                        },
                      ),
                      if (isExpanded && task.subTasks.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(left: 32, right: 8, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...task.subTasks.map(
                                (subTask) => ListTile(
                                  dense: true,
                                  leading: const Icon(Icons.subdirectory_arrow_right),
                                  title: Text(subTask.title),
                                  subtitle: Text('Priority: ${subTask.priority.name}'),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            failedAction: (msg) => Center(child: Text('Error: $msg')),
            orElse: () => const Center(child: Text('No data.')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: HeroTagConstants.refreshActiveTasks,
        onPressed: () {
          context.read<TasksManagerBloc>().add(const TasksManagerEvent.fetchActiveTasks());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Future<void> _openEditTask(BuildContext context, TaskVM task) async {
    await navigatorPushNamed(context, AppRouteConfigs.editTask.route, arguments: task);
    // Refresh the tasks list after returning
  }
}
