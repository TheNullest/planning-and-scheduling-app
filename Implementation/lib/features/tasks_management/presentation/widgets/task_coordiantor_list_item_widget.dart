import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zamaan/core/constants/routes/app_route_configs.dart';
import 'package:zamaan/core/extensions/date_time.dart';
import 'package:zamaan/core/utils/navigator.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/coordinators/task_coordinator/task_coordinator.dart';
import 'package:zamaan/features/tasks_management/presentation/navigation_argument_models/task_upsert.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tasks_overview/sub_task_overview_list_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tasks_overview/task_overview_list_item_vm.dart';
import 'package:zamaan/presentation_shared/widgets/display_chip.dart';

class TaskCoordinatorListItemWidget extends StatefulWidget {
  const TaskCoordinatorListItemWidget({
    required this.viewModel,
    required this.onEdit,
    required this.onToggleExpand,
    required this.onTap,
    super.key,
    this.isInitiallyExpanded = false,
    this.isSelected = false,
  });

  final TaskOverviewListItemVm viewModel;
  final bool isInitiallyExpanded;
  final bool isSelected;
  final VoidCallback onTap;
  final TaskCoordinator Function() onEdit;
  final ValueChanged<String?> onToggleExpand;

  @override
  State<TaskCoordinatorListItemWidget> createState() => _TaskCoordinatorListItemWidgetState();
}

class _TaskCoordinatorListItemWidgetState extends State<TaskCoordinatorListItemWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _heightAnimation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();

    _isExpanded = widget.isInitiallyExpanded;

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _heightAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    if (_isExpanded) {
      _animationController.forward();
    }
  }

  @override
  void didUpdateWidget(TaskCoordinatorListItemWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isInitiallyExpanded != oldWidget.isInitiallyExpanded) {
      _isExpanded = widget.isInitiallyExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
    widget.onToggleExpand(_isExpanded ? widget.viewModel.id : null);
  }

  void _handleTap() {
    if (widget.isSelected) {
      _toggleExpansion();
    } else {
      widget.onTap();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      elevation: widget.isSelected ? 4 : 1,
      child: InkWell(
        onTap: _handleTap,
        onLongPress: widget.onEdit,
        borderRadius: BorderRadius.circular(8),
        child: Column(
          children: [
            // Always visible header
            _buildHeader(context),

            // Animated expandable content
            SizeTransition(
              sizeFactor: _heightAnimation,
              child: _buildExpandedContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          // Expand/collapse icon
          IconButton(
            icon: Icon(
              _isExpanded ? Icons.expand_less : Icons.expand_more,
              color: Colors.grey[600],
            ),
            onPressed: _toggleExpansion,
            splashRadius: 20,
          ),

          // Priority indicator
          Container(
            width: 4,
            height: 40,
            decoration: BoxDecoration(
              color: _getPriorityColor(widget.viewModel.priority),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 12),

          // Main content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.viewModel.title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    // TODO[Enhancement]: should mention if it's running as "Run Time:"
                    // if (widget.viewModel.isRunning) _buildRunningIndicator(),
                  ],
                ),
                const SizedBox(height: 4),
                _buildHeaderMetadata(),
              ],
            ),
          ),

          // Status and actions
          _buildStatusSection(),
        ],
      ),
    );
  }

  Widget _buildRunningIndicator() {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.timer, size: 14, color: Colors.orange),
        SizedBox(width: 2),
        Text(
          'widget.viewModel.runtimeDisplay',
          style: TextStyle(
            fontSize: 12,
            color: Colors.orange,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderMetadata() {
    return Row(
      children: [
        Text(
          'Created: ${widget.viewModel.createdAt.toDateTimeString}',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(width: 12),
        Text(
          widget.viewModel.priority.name,
          style: TextStyle(
            fontSize: 12,
            color: _getPriorityColor(widget.viewModel.priority),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusSection() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: _getStatusColor(widget.viewModel.status),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            widget.viewModel.status.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExpandedContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(height: 20),

          // Progress section
          if (widget.viewModel.subTasks.isNotEmpty) _buildProgressSection(),

          // Subtasks list
          if (widget.viewModel.subTasks.isNotEmpty) _buildSubtasksList(),

          // Schedule information
          _buildScheduleInfo(),

          // Categories and tags
          if (widget.viewModel.categories.isNotEmpty || widget.viewModel.tags.isNotEmpty)
            _buildCategoriesAndTags(),

          // Goals section
          // if (widget.viewModel.goals.isNotEmpty) _buildGoalsSection(),

          // Action buttons
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildProgressSection() {
    // final progress = widget.viewModel.progress;
    final progress = Random().nextInt(101).toDouble();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Progress',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey[300],
          color: _getProgressColor(progress),
          minHeight: 8,
          borderRadius: BorderRadius.circular(4),
        ),
        const SizedBox(height: 4),
        Text(
          '${(progress * 100).round()}% complete',
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildSubtasksList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Subtasks (${widget.viewModel.subTasks.length})',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8),
        ...widget.viewModel.subTasks.map((subTask) => _buildSubtaskItem(subTask)),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildSubtaskItem(SubTaskOverviewListItemVm subTask) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          Icon(
            subTask.status == TaskStatus.done ? Icons.check_circle : Icons.radio_button_unchecked,
            size: 18,
            color: subTask.status == TaskStatus.done ? Colors.green : Colors.grey,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subTask.title,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    decoration:
                        subTask.status == TaskStatus.done ? TextDecoration.lineThrough : null,
                    color: subTask.status == TaskStatus.done ? Colors.grey : Colors.black87,
                  ),
                ),
                if (subTask.status == TaskStatus.pending)
                  const Row(
                    children: [
                      Icon(Icons.timer, size: 12, color: Colors.orange),
                      SizedBox(width: 4),
                      Text(
                        'Running: subTask.runtimeDisplay',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Text(
            subTask.priority.name,
            style: TextStyle(
              fontSize: 10,
              color: _getPriorityColor(subTask.priority),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScheduleInfo() {
    return Row(
      children: [
        const Icon(Icons.schedule, size: 16, color: Colors.grey),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            widget.viewModel.nextScheduledLabel,
            style: TextStyle(
              fontSize: 13,
              color: widget.viewModel.nextScheduledDate != null ? Colors.blue[700] : Colors.grey,
              fontWeight:
                  widget.viewModel.nextScheduledDate != null ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoriesAndTags() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Text(
          'Categories',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 6,
          runSpacing: 6,
          children: [
            ...widget.viewModel.categories.map((category) => DisplayChip(
                  title: category.label,
                  color: category.color,
                  icon: category.icon,
                )),
          ],
        ),
        Text(
          'Tags',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 6,
          runSpacing: 6,
          children: [
            ...widget.viewModel.tags.map((tag) => DisplayChip(
                  title: tag.label,
                  color: tag.color,
                  icon: tag.icon,
                )),
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget _buildGoalsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Goals',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8),
        // ...widget.viewModel.goals.map((goal) => Padding(
        //       padding: const EdgeInsets.only(bottom: 4),
        //       child: Row(
        //         children: [
        //           const Icon(Icons.flag, size: 14, color: Colors.purple),
        //           const SizedBox(width: 8),
        //           Expanded(
        //             child: Text(
        //               goal,
        //               style: const TextStyle(fontSize: 12),
        //             ),
        //           ),
        //         ],
        //       ),
        //     )),
        const SizedBox(height: 12),
      ],
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

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () async {
            final coordiantor = widget.onEdit();
            final arguments = TaskUpsertNavigationArguments(routeConfig: AppRouteConfigs.editTask)
              ..addExtraArgument(#taskCoordinator, coordiantor);
            await navigatorPushNamed(context, arguments);
          },
          child: const Text('Edit'),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {
            // Add task action logic here
          },
          child: const Text('Start Task'),
        ),
      ],
    );
  }

  // Helper methods
  Color _getPriorityColor(Priority priority) {
    switch (priority) {
      case Priority.critical:
        return Colors.purple;
      case Priority.high:
        return Colors.red;
      case Priority.medium:
        return Colors.orange;
      case Priority.low:
        return Colors.green;
      case Priority.optional:
        return Colors.blue;
    }
  }

  Color _getStatusColor(TaskStatus status) {
    switch (status) {
      case TaskStatus.done:
        return Colors.green;
      case TaskStatus.inProgress:
        return Colors.blue;
      case TaskStatus.pending:
        return Colors.orange;
      case TaskStatus.cancelled:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  Color _getProgressColor(double progress) {
    if (progress < 0.3) return Colors.red;
    if (progress < 0.7) return Colors.orange;
    return Colors.green;
  }
}
