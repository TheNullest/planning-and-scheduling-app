import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/categories/categories_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/form_controllers/category_form_controller.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/action_buttons.dart';
import 'package:zamaan/presentation_shared/widgets/color_picker.dart';
import 'package:zamaan/presentation_shared/widgets/icon_picker.dart';

class CategoryUpsertDialog extends StatefulWidget {
  const CategoryUpsertDialog(this.category, {super.key});

  final CategoryUpsertVM category;

  @override
  State<CategoryUpsertDialog> createState() => _CategoryUpsertDialogState();
}

class _CategoryUpsertDialogState extends State<CategoryUpsertDialog> {
  late final CategoriesManagerBloc catsMangerBloc;
  late final CategoryVmsManager categoryVMsManager;
  late final CategoryFormController categoryFormController;
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  @override
  void initState() {
    catsMangerBloc = context.read<CategoriesManagerBloc>();
    categoryVMsManager = context.read<CategoryVmsManager>();
    categoryFormController = widget.category.vmFormController;
    titleController = TextEditingController(text: widget.category.vmFormController.title);
    descriptionController =
        TextEditingController(text: widget.category.vmFormController.description ?? '');
    super.initState();
  }

  void _onIconPicked(IconData icon) {
    setState(() {
      categoryFormController.icon = icon;
    });
  }

  void resetTextControllers() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleController.text = categoryFormController.title;
      descriptionController.text = categoryFormController.description ?? '';
      categoryFormController.shouldResetInputs = false;
    });
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Selector<CategoryVmsManager, String>(
                  selector: (_, vmsManager) => vmsManager.viewStates.widgetTitle,
                  builder: (_, dialogTitle, __) {
                    return Text(
                      dialogTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    );
                  }),
              IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close))
            ],
          ),
          ChangeNotifierProvider<CategoryFormController>.value(
            value: categoryFormController,
            child: Selector<CategoryFormController, bool>(
                selector: (_, fromController) => fromController.shouldResetInputs,
                builder: (context, reset, _) {
                  if (reset) resetTextControllers();
                  return Column(
                    children: [
                      // Title field
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: titleController,
                          decoration: const InputDecoration(labelText: 'Title'),
                          validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                          onChanged: (value) => categoryFormController.title = value,
                        ),
                      ),

                      // Desciption field
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: descriptionController,
                          decoration: const InputDecoration(labelText: 'Description'),
                          validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                          onChanged: (value) => categoryFormController.description = value,
                        ),
                      ),
                      // Spacer
                      12.sizedBoxHeight,

                      Row(
                        children: [
                          //color picker
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Selector<CategoryFormController, Color>(
                              selector: (_, fromController) => fromController.color,
                              shouldRebuild: (oldColor, currentColer) => oldColor != currentColer,
                              builder: (context, color, _) {
                                return ColorPickerWidget(
                                  onColorChanged: (changedColor) =>
                                      categoryFormController.color = changedColor,
                                  color: color,
                                );
                              },
                            ),
                          ),

                          // Icon picker
                          IconPickerWidget(
                            onIconPicked: _onIconPicked,
                            initIcon: categoryFormController.icon,
                          ),
                        ],
                      ),
                    ],
                  );
                }),
          ),
          ActionButtonsWidget(
            onInsert: () {
              catsMangerBloc.add(CategoriesManagerEvent.create(categoryFormController.toEntity));
            },
            onUpdate: () =>
                catsMangerBloc.add(CategoriesManagerEvent.update(categoryFormController.toEntity)),
            onDelete: () {
              catsMangerBloc.add(CategoriesManagerEvent.delete(categoryFormController.id!));
              categoryVMsManager.removeFromItems(widget.category);
            },
            onReset: categoryFormController.resetValues,
            viewStates: categoryVMsManager.viewStates,
          )
        ],
      ),
    );
  }
}
