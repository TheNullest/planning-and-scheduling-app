import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tags/tags_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/form_controllers/tag_form_controller.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/action_buttons.dart';
import 'package:zamaan/presentation_shared/widgets/color_picker.dart';
import 'package:zamaan/presentation_shared/widgets/icon_picker.dart';

class TagUpsertDialog extends StatefulWidget {
  const TagUpsertDialog(this.tag, {super.key});

  final TagUpsertVM tag;

  @override
  State<TagUpsertDialog> createState() => _TagUpsertDialogState();
}

class _TagUpsertDialogState extends State<TagUpsertDialog> {
  late final TagsManagerBloc tagsMangerBloc;
  late final TagVmsManager tagVMsManager;
  late final TagFormController tagFormController;
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  @override
  void initState() {
    tagsMangerBloc = context.read<TagsManagerBloc>();
    tagVMsManager = context.read<TagVmsManager>();
    tagFormController = widget.tag.vmFormController;
    titleController = TextEditingController(text: widget.tag.vmFormController.title);
    descriptionController =
        TextEditingController(text: widget.tag.vmFormController.description ?? '');
    super.initState();
  }

  void _onIconPicked(IconData icon) {
    setState(() {
      tagFormController.icon = icon;
    });
  }

  void resetTextControllers() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleController.text = tagFormController.title;
      descriptionController.text = tagFormController.description ?? '';
      tagFormController.shouldResetInputs = false;
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
              Selector<TagVmsManager, String>(
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
          ChangeNotifierProvider<TagFormController>.value(
            value: tagFormController,
            child: Selector<TagFormController, bool>(
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
                          onChanged: (value) => tagFormController.title = value,
                        ),
                      ),

                      // Desciption field
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: descriptionController,
                          decoration: const InputDecoration(labelText: 'Description'),
                          validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                          onChanged: (value) => tagFormController.description = value,
                        ),
                      ),
                      // Spacer
                      12.sizedBoxHeight,

                      Row(
                        children: [
                          //color picker
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Selector<TagFormController, Color>(
                              selector: (_, fromController) => fromController.color,
                              shouldRebuild: (oldColor, currentColer) => oldColor != currentColer,
                              builder: (context, color, _) {
                                return ColorPickerWidget(
                                  onColorChanged: (changedColor) =>
                                      tagFormController.color = changedColor,
                                  color: color,
                                );
                              },
                            ),
                          ),

                          // Icon picker
                          IconPickerWidget(
                            onIconPicked: _onIconPicked,
                            initIcon: tagFormController.icon,
                          ),
                        ],
                      ),
                    ],
                  );
                }),
          ),
          ActionButtonsWidget(
            onInsert: () {
              tagsMangerBloc.add(TagsManagerEvent.create(tagFormController.toEntity));
            },
            onUpdate: () => tagsMangerBloc.add(TagsManagerEvent.update(tagFormController.toEntity)),
            onDelete: () {
              tagsMangerBloc.add(TagsManagerEvent.delete(tagFormController.id!));
              tagVMsManager.removeFromItems(widget.tag);
            },
            onReset: tagFormController.resetValues,
            viewStates: tagVMsManager.viewStates,
          )
        ],
      ),
    );
  }
}
