import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tags/tags_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/action_buttons.dart';
import 'package:zamaan/presentation_shared/widgets/color_picker.dart';
import 'package:zamaan/presentation_shared/widgets/icon_picker.dart';

Future<void> tagUpsertDialog(BuildContext context, TagUpsertVM tag, String? taskId) async =>
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      constraints: BoxConstraints(
        minHeight: context.mediaQueryHeight,
      ),
      builder: (_) => ChangeNotifierProvider<TagUpsertVM>.value(
        value: tag,
        child: _TagUpsert(taskId),
      ),
    );

class _TagUpsert extends StatefulWidget {
  const _TagUpsert(this.taskId);
  final String? taskId;

  @override
  State<_TagUpsert> createState() => _TagUpsertState();
}

class _TagUpsertState extends State<_TagUpsert> {
  TagsManagerBloc get tagsMangerBloc => context.read<TagsManagerBloc>();
  TagUpsertVM get tagVM => context.read<TagUpsertVM>();

  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  @override
  void initState() {
    titleController = TextEditingController(text: tagVM.title);
    descriptionController = TextEditingController(text: tagVM.description ?? '');
    super.initState();
  }

  void _onIconPicked(IconData icon) {
    setState(() {
      tagVM.icon = icon;
    });
  }

  void resetTextControllers() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleController.text = tagVM.title;
      descriptionController.text = tagVM.description ?? '';
      tagVM.shouldResetInputs = false;
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
              Selector<TagUpsertVM, String>(
                  selector: (_, vm) => vm.viewStates.widgetTitle,
                  builder: (_, dialogTitle, __) {
                    return Text(
                      dialogTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    );
                  }),
              IconButton(
                  onPressed: () {
                    tagVM.resetValues();
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
          Selector<TagUpsertVM, bool>(
              selector: (_, vm) => vm.shouldResetInputs,
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
                        onChanged: (value) => tagVM.title = value,
                      ),
                    ),

                    // Desciption field
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        controller: descriptionController,
                        decoration: const InputDecoration(labelText: 'Description'),
                        validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                        onChanged: (value) => tagVM.description = value,
                      ),
                    ),
                    // Spacer
                    12.sizedBoxHeight,

                    Row(
                      children: [
                        //color picker
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Selector<TagUpsertVM, Color>(
                            selector: (_, vm) => vm.color,
                            shouldRebuild: (oldColor, currentColer) => oldColor != currentColer,
                            builder: (context, color, _) {
                              return ColorPickerWidget(
                                onColorChanged: (changedColor) => tagVM.color = changedColor,
                                color: color,
                              );
                            },
                          ),
                        ),

                        // Icon picker
                        IconPickerWidget(
                          onIconPicked: _onIconPicked,
                          initIcon: tagVM.icon,
                        ),
                      ],
                    ),
                    Selector<TagUpsertVM, ({bool isRelatedToTask, String? taskId})>(
                        selector: (_, vm) =>
                            (isRelatedToTask: vm.isRelatedToTask, taskId: vm.taskId),
                        builder: (context, values, _) {
                          return SwitchListTile(
                              title: const Text('Set to task'),
                              subtitle: const Text('Mark this tag as related to a task.'),
                              isThreeLine: true,
                              contentPadding: const EdgeInsets.all(8),
                              secondary: const Icon(Icons.task_alt_outlined),
                              dense: true,
                              activeColor: Colors.green,
                              value: values.isRelatedToTask,
                              onChanged: widget.taskId == null
                                  ? null
                                  : (value) => tagVM.taskId = value ? widget.taskId : null);
                        }),
                  ],
                );
              }),
          ActionButtonsWidget(
            onSubmit: () {
              tagsMangerBloc.add(TagsManagerEvent.create(tagVM.toEntity));
            },
            onUpdate: () => tagsMangerBloc.add(TagsManagerEvent.update(tagVM.toEntity)),
            onDelete: () => tagsMangerBloc.add(TagsManagerEvent.delete(tagVM.id!)),
            onReset: tagVM.resetValues,
            viewStates: tagVM.viewStates,
          )
        ],
      ),
    );
  }
}
