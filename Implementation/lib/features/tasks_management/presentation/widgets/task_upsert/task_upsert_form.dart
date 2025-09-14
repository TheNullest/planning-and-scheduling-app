import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/reference_type.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/goals/goals_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/category/selected_categories.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/goal/goal_card.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/tag/selected_tags.dart';
import 'package:zamaan/presentation_shared/widgets/color_picker.dart';
import 'package:zamaan/presentation_shared/widgets/dropdown_button.dart';
import 'package:zamaan/presentation_shared/widgets/icon_picker.dart';

class TaskUpsertFormWidget extends StatelessWidget {
  const TaskUpsertFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final taskVM = context.read<TaskUpsertVM>();

    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    if (taskVM.id != null) {
      context.read<GoalsManagerBloc>().add(GoalsManagerEvent.started(
          taskIds: [taskVM.id!],
          subTaskIds: context
              .read<TaskUpsertVM>()
              .subTasksManager
              .persistedItems
              .map((item) => item.id!)
              .toList()));
    }
    return SliverToBoxAdapter(
      child: Selector<TaskUpsertVM, bool>(
          selector: (_, vm) => vm.shouldResetInputs,
          builder: (context, reset, _) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              titleController.text = taskVM.title;
              descriptionController.text = taskVM.description;
            });
            return Column(
              children: [
                // Title field
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(labelText: 'Title'),
                    validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                    onChanged: (value) => taskVM.title = value,
                  ),
                ),

                // Desciption field
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(labelText: 'Description'),
                    validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                    onChanged: (value) => taskVM.description = value,
                  ),
                ),
                // Spacer
                12.sizedBoxHeight,
                LayoutBuilder(
                  builder: (context, constraints) => GridView.extent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // Color
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Selector<TaskUpsertVM, Color>(
                          selector: (_, vm) => vm.color,
                          shouldRebuild: (oldColor, currentColer) => oldColor != currentColer,
                          builder: (context, color, _) {
                            return ColorPickerWidget(
                              onColorChanged: (changedColor) => taskVM.color = changedColor,
                              color: color,
                            );
                          },
                        ),
                      ),

                      // Icon picker
                      Selector<TaskUpsertVM, IconData>(
                        selector: (_, vm) => vm.icon,
                        builder: (_, icon, __) => IconPickerWidget(
                          onIconPicked: (icon) => taskVM.icon = icon,
                          initIcon: icon,
                        ),
                      ),

                      // Priority dropdown
                      CustomDropdownButtonWidget<TaskUpsertVM, Priority>(
                        label: 'Priority',
                        selector: (_, vm) => vm.priority,
                        items: Priority.values.toList(),
                        itemBuilder: (priority) => Text(priority.name),
                        onChanged: (priority) => taskVM.priority = priority!,
                      ),

                      // Task status dropdown
                      CustomDropdownButtonWidget<TaskUpsertVM, TaskStatus>(
                        label: 'Status',
                        selector: (_, vm) => vm.status,
                        items: TaskStatus.values.toList(),
                        itemBuilder: (status) => Text(status.name),
                        onChanged: (status) => taskVM.status = status!,
                      ),

                      // Archived switch
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Selector<TaskUpsertVM, bool>(
                          selector: (_, vm) => vm.archived,
                          builder: (_, archived, __) => SwitchListTile(
                            title: const Text('Archived'),
                            subtitle: const Text('Mark this task as archived'),
                            isThreeLine: true,
                            value: archived,
                            onChanged: (v) => taskVM.archived = v,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

// Categories
                ChangeNotifierProvider<CategoryVmsManager>(
                    create: (_) => CategoryVmsManager(
                          userId: context.currentUserId,
                          deselectItem: taskVM.deselectCat,
                          selectItem: taskVM.selectCat,
                        ),
                    child: SelectedCategoriesWidget(
                      selectedIds: taskVM.categoryIds,
                    )),

                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Divider(
                    height: 1,
                    thickness: .5,
                  ),
                ),
// Tags

                ChangeNotifierProvider<TagVmsManager>(
                    create: (_) => TagVmsManager(
                          userId: context.currentUserId,
                          deselectItem: taskVM.deselectTag,
                          selectItem: taskVM.selectTag,
                          taskId: taskVM.id,
                        ),
                    child: SelectedTagsWidget(
                      selectedIds: taskVM.fixedTagIds,
                    )),

                12.sizedBoxHeight,

                // Goal
                Selector<TaskUpsertVM, String?>(
                    selector: (_, vm) => vm.id,
                    builder: (_, taskId, __) {
                      return GoalCardWidget(refId: taskId, refType: ReferenceType.task);
                    })
              ],
            );
          }),
    );
  }
}
