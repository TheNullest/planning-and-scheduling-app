import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamaan/core/constants/hero_tags.dart';
import 'package:zamaan/core/constants/routes/app_route_configs.dart';
import 'package:zamaan/core/utils/navigator.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/navigation_argument_models/task_upsert.dart';

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
            fetchedTasks: (tasks, allSubTasks) {
              if (tasks.isEmpty) {
                return const Center(child: Text('No active tasks.'));
              }
              return ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  final subTasks = allSubTasks.where((item) => item.taskId == task.id).toList();
                  final isExpanded = _expandedTaskId == task.id;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(task.colorCode),
                          child: Icon(
                            IconData(task.iconCode, fontFamily: 'MaterialIcons'),
                            color: Colors.black,
                          ),
                        ),
                        title: Text(task.title),
                        subtitle: Text('Priority: ${task.priority.name}'),
                        trailing: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                        onTap: () {
                          setState(() {
                            _expandedTaskId = isExpanded ? null : task.id;
                          });
                        },
                        onLongPress: () {
                          _openEditTask(context, task, subTasks);
                        },
                      ),
                      if (isExpanded && subTasks.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(left: 32, right: 8, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...subTasks.map(
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

  Future<void> _openEditTask(
    BuildContext context,
    TaskEntity task,
    List<SubTaskEntity> subTasks,
  ) async {
    final arguments = TaskUpsertNavigationArguments(routeConfig: AppRouteConfigs.editTask)
      ..addExtraArgument(#taskEntity, task)
      ..addExtraArgument(#subTaskEntities, subTasks);
    await navigatorPushNamed(context, arguments);
    // Refresh the tasks list after returning
  }
}
