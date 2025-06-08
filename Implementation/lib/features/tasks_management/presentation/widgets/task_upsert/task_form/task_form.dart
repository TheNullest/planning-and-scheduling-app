import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/category/selected_categories.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/dropdown_button.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/tag/selected_tags.dart';
import 'package:zamaan/presentation_shared/widgets/color_picker.dart';
import 'package:zamaan/presentation_shared/widgets/icon_picker.dart';

class TaskFormWidget extends StatelessWidget {
  const TaskFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final taskFormController = context.read<TaskUpsertVM>().vmFormController;

    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    return SliverToBoxAdapter(
      child: Selector<TaskUpsertVM, bool>(
          selector: (_, vm) => vm.vmFormController.shouldResetInputs,
          builder: (context, reset, _) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              titleController.text = taskFormController.title;
              descriptionController.text = taskFormController.description ?? '';
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
                    onChanged: (value) => taskFormController.title = value,
                  ),
                ),

                // Desciption field
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(labelText: 'Description'),
                    validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                    onChanged: (value) => taskFormController.description = value,
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
                          selector: (_, vm) => vm.vmFormController.color,
                          shouldRebuild: (oldColor, currentColer) => oldColor != currentColer,
                          builder: (context, color, _) {
                            return ColorPickerWidget(
                              onColorChanged: (changedColor) =>
                                  taskFormController.color = changedColor,
                              color: color,
                            );
                          },
                        ),
                      ),

                      // Icon picker
                      Selector<TaskUpsertVM, IconData>(
                        selector: (_, vm) => vm.vmFormController.icon,
                        builder: (_, icon, __) => IconPickerWidget(
                          onIconPicked: (icon) => taskFormController.icon = icon,
                          initIcon: icon,
                        ),
                      ),

                      // Priority dropdown
                      CustomDropdownButtonWidget<TaskUpsertVM, Priority>(
                        label: 'Priority',
                        selector: (_, vm) => vm.vmFormController.priority,
                        items: Priority.values.toList(),
                        itemBuilder: (priority) => Text(priority.name),
                        onChanged: (priority) => taskFormController.priority = priority!,
                      ),

                      // Task status dropdown
                      CustomDropdownButtonWidget<TaskUpsertVM, TaskStatus>(
                        label: 'Status',
                        selector: (_, vm) => vm.vmFormController.status,
                        items: TaskStatus.values.toList(),
                        itemBuilder: (status) => Text(status.name),
                        onChanged: (status) => taskFormController.status = status!,
                      ),

                      // Archived switch
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Selector<TaskUpsertVM, bool>(
                          selector: (_, vm) => vm.vmFormController.archived,
                          builder: (_, archived, __) => SwitchListTile(
                            title: const Text('Archived'),
                            value: archived,
                            onChanged: (v) => taskFormController.archived = v,
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
                          deselectItem: taskFormController.deselectCat,
                          selectItem: taskFormController.selectCat,
                        ),
                    child: SelectedCategoriesWidget(
                      selectedIds: taskFormController.categoryIds,
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
                          deselectItem: taskFormController.deselectTag,
                          selectItem: taskFormController.selectTag,
                        ),
                    child: SelectedTagsWidget(
                      selectedIds: taskFormController.fixedTagIds,
                    )),
              ],
            );
          }),
    );
  }
}
