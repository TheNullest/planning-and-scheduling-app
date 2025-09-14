import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/categories/categories_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_upsert_vm.dart';
import 'package:zamaan/presentation_shared/widgets/action_buttons.dart';
import 'package:zamaan/presentation_shared/widgets/color_picker.dart';
import 'package:zamaan/presentation_shared/widgets/icon_picker.dart';

class CategoryUpsertFormWidget extends StatefulWidget {
  const CategoryUpsertFormWidget({super.key});

  @override
  State<CategoryUpsertFormWidget> createState() => _CategoryUpsertFormWidgetState();
}

class _CategoryUpsertFormWidgetState extends State<CategoryUpsertFormWidget> {
  CategoriesManagerBloc get catsManagerBloc => context.read<CategoriesManagerBloc>();
  CategoryUpsertVM get categoryVM => context.read<CategoryUpsertVM>();
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  @override
  void initState() {
    titleController = TextEditingController(text: categoryVM.title);
    descriptionController = TextEditingController(text: categoryVM.description);
    super.initState();
  }

  void _onIconPicked(IconData icon) {
    setState(() {
      categoryVM.icon = icon;
    });
  }

  void resetTextControllers() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleController.text = categoryVM.title;
      descriptionController.text = categoryVM.description;
      categoryVM.shouldResetInputs = false;
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
              Selector<CategoryUpsertVM, String>(
                  selector: (_, vm) => vm.viewStates.widgetTitle(vm.isNewItem.value),
                  builder: (_, dialogTitle, __) {
                    return Text(
                      dialogTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    );
                  }),
              IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close))
            ],
          ),
          Selector<CategoryUpsertVM, bool>(
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
                        onChanged: (value) => categoryVM.title = value,
                      ),
                    ),

                    // Desciption field
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        controller: descriptionController,
                        decoration: const InputDecoration(labelText: 'Description'),
                        validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                        onChanged: (value) => categoryVM.description = value,
                      ),
                    ),
                    // Spacer
                    12.sizedBoxHeight,

                    Row(
                      children: [
                        //color picker
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Selector<CategoryUpsertVM, Color>(
                            selector: (_, fromController) => fromController.color,
                            shouldRebuild: (oldColor, currentColer) => oldColor != currentColer,
                            builder: (context, color, _) {
                              return ColorPickerWidget(
                                onColorChanged: (changedColor) => categoryVM.color = changedColor,
                                color: color,
                              );
                            },
                          ),
                        ),

                        // Icon picker
                        IconPickerWidget(
                          onIconPicked: _onIconPicked,
                          initIcon: categoryVM.icon,
                        ),
                      ],
                    ),
                  ],
                );
              }),
          ActionButtonsWidget(
            onSubmit: () {
              catsManagerBloc.add(CategoriesManagerEvent.create(categoryVM.toEntity));
            },
            onUpdate: () => catsManagerBloc.add(CategoriesManagerEvent.update(categoryVM.toEntity)),
            onDelete: () {
              catsManagerBloc.add(CategoriesManagerEvent.delete(categoryVM.id!));
            },
            onReset: categoryVM.resetValues,
            viewStates: categoryVM.viewStates,
            isNewItem: categoryVM.isNewItem.value,
          )
        ],
      ),
    );
  }
}
