import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/entities/scheduled_day_time.dart';
import 'package:zamaan/domain/entities/scheduled_interval.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/presentation/coordinators/task_coordinator/task_coordinator.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_list_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_list_item_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tasks_overview/task_overview_list_item_vm.dart';

part 'attach_operations_on_manager.dart';
part 'batch_crud_operations_on_manager.dart';
part 'single_crud_operations_on_manager.dart';

/// Manages a list of [TaskCoordinator] instances, each grouped in a map with
/// its parent task id:
///   { 'taskId': String, 'coordinator': TaskCoordinator }.
///
/// The manager allows you to:
/// * Initially populate the list with tasks and their subtasks only.
/// * Later attach other loaded entities (constraints, schedule, exceptions)
///   to the matching [TaskCoordinator] based on `task.id`.
///
/// This is a simple data holder—no ChangeNotifier/BLoC yet.
class TaskCoordinatorsManager {
  /// Internal storage: list of maps
  /// Each map contains:
  ///  - 'taskId' : String
  ///  - 'coordinator' : TaskCoordinator
  @protected
  final Map<String, TaskCoordinator> coordinators = {};

  /// Initialize coordinators from a list of tasks and their subtasks.
  void setCoordinators(List<TaskEntity> tasks, List<SubTaskEntity> subTasks) {
    for (final task in tasks) {
      final relatedSubTasks = subTasks.where((s) => s.taskId == task.id).toList();
      coordinators[task.id] = TaskCoordinator.basic(task: task, subTasks: relatedSubTasks);
    }
  }

  List<String> get taskIds => coordinators.keys.toList();
  List<CategoryEntity> categories = [];
  List<TagEntity> tags = [];

  List<String> getCurrenttaskCategoryIds(String taskId) => coordinators[taskId]!.task.categoryIds;
  List<String> getCurrenttaskTagIds(String taskId) => coordinators[taskId]!.task.fixedTagIds;

  /// Clear all stored coordinators.
  void clear() => coordinators.clear();

  List<TaskOverviewListItemVm> get toOverviewLisItems => coordinators.values
      .map((coordinator) => TaskOverviewListItemVm(
          task: coordinator.task,
          subTasks: coordinator.subTasks,
          categories: categories
              .where((cat) => coordinator.task.categoryIds.contains(cat.id))
              .map((cat) => CategoryListItemVm.fromEntity(cat))
              .toList(),
          tags: tags
              .where((tag) => coordinator.task.fixedTagIds.contains(tag.id))
              .map((tag) => TagListItemVm.fromEntity(tag))
              .toList()))
      .toList();

  TaskCoordinator getTaskCoordinator(String taskId) => coordinators[taskId]!;
}
