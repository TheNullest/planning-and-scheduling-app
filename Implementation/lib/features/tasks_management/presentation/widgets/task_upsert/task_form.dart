import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart' as flutter_icon_picker
    show IconPack, showIconPicker;
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/domain/enums/hive/priority.dart';
import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/task_form_controller.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/task_upsert/task_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/task_upsert/dropdown_button.dart';

class TaskFormWidget extends StatefulWidget {
  const TaskFormWidget({super.key});

  @override
  State<TaskFormWidget> createState() => _TaskFormWidgetState();
}

class _TaskFormWidgetState extends State<TaskFormWidget> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late final TaskFormController _taskFormController;
  late var _selectedIcon = Icons.help_outline;

  @override
  void initState() {
    super.initState();
    _taskFormController = context.read<TaskFormController>();
    _titleController = TextEditingController(
      text: _taskFormController.title,
    );
    _descriptionController = TextEditingController(
      text: _taskFormController.description,
    );
  }

  Future<void> _pickIcon() async {
    final icon = await flutter_icon_picker.showIconPicker(
      context,
      iconPackModes: [flutter_icon_picker.IconPack.material],
      title: const Text('Choose an Icon'),
      backgroundColor: Colors.white,
      iconColor: Colors.blue,
    );

    if (icon != null) {
      setState(() => _selectedIcon = icon);
    }
  }

  void _resetTextControllers() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _titleController.text = _taskFormController.title;
      _descriptionController.text = _taskFormController.description ?? '';
      _taskFormController.resetTextController = false;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          // Title field
          Padding(
            padding: const EdgeInsets.all(8),
            child: Selector<TaskFormController, bool>(
              selector: (_, controller) => controller.resetTextController,
              builder: (context, reset, _) {
                if (reset) _resetTextControllers();
                return TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Title'),
                  validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
                  onChanged: (value) => _taskFormController.title = value,
                );
              },
            ),
          ),

          // Desciption field
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
              validator: (v) => v == null || v.isEmpty ? 'Enter a title' : null,
              onChanged: (value) => _taskFormController.description = value,
            ),
          ),
          // Spacer
          12.sizedBoxHeight,
          // Color picker row
          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 1000;
              final isNarrow = constraints.maxWidth < 600;
              final crossAxisCount = isNarrow
                  ? 3
                  : isWide
                      ? 1
                      : 2;

              return GridView.extent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 2,
                shrinkWrap: true, // <-- Add this
                physics: const NeverScrollableScrollPhysics(), // <-- Add this
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Selector<TaskUpsertVM, Color>(
                      selector: (_, vm) => vm.taskFormController.color,
                      builder: (context, color, _) {
                        return Row(
                          children: [
                            const Text('Color:'),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: () async {
                                final pickedColor = await showDialog<Color>(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: const Text('Pick a color'),
                                    content: BlockPicker(
                                      pickerColor: _taskFormController.color,
                                      onColorChanged: (c) => Navigator.of(context).pop(c),
                                    ),
                                  ),
                                );
                                if (mounted && pickedColor != null) {
                                  _taskFormController.color = pickedColor;
                                }
                              },
                              child: CircleAvatar(backgroundColor: color),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        _selectedIcon,
                        size: 50,
                        color: Colors.blue,
                      ),

                      // ElevatedButton(
                      //   onPressed: () => showDialog(
                      //     context: context,
                      //     builder: (context) => EmojiPicker(
                      //       textEditingController: _controller,
                      //       scrollController: _scrollController,
                      //       config: Config(
                      //         height: 256,
                      //         checkPlatformCompatibility: true,
                      //         viewOrderConfig: const ViewOrderConfig(),
                      //         emojiViewConfig: EmojiViewConfig(
                      //           // Issue: https://github.com/flutter/flutter/issues/28894
                      //           emojiSizeMax:
                      //               28 * (foundation.defaultTargetPlatform == TargetPlatform.iOS ? 1.2 : 1.0),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      //   child: const Text('Emojis'),
                      // ),
                      // TextField(
                      //   controller: _controller,
                      //   style: TextStyle(fontSize: 50),
                      // ),
                      Align(
                        child: ElevatedButton.icon(
                          label: const Text('Open Icon Picker'),
                          icon: const Icon(Icons.color_lens),
                          onPressed: _pickIcon,
                        ),
                      ),
                    ],
                  ),
                  CustomDropdownButtonWidget<TaskUpsertVM, IconData>(
                    label: 'Icon',
                    selector: (_, vm) => vm.taskFormController.icon,
                    items: const [
                      Icons.task,
                      Icons.star,
                      Icons.work,
                      Icons.home,
                    ],
                    itemBuilder: Icon.new,
                    onChanged: (iconData) => _taskFormController.icon = iconData!,
                  ),

                  // Priority dropdown
                  CustomDropdownButtonWidget<TaskUpsertVM, Priority>(
                    label: 'Priority',
                    selector: (_, vm) => vm.taskFormController.priority,
                    items: Priority.values.toList(),
                    itemBuilder: (priority) => Text(priority.name),
                    onChanged: (priority) => _taskFormController.priority = priority!,
                  ),

                  // Task status dropdown
                  CustomDropdownButtonWidget<TaskUpsertVM, TaskStatus>(
                    label: 'Status',
                    selector: (_, vm) => vm.taskFormController.status,
                    items: TaskStatus.values.toList(),
                    itemBuilder: (status) => Text(status.name),
                    onChanged: (status) => _taskFormController.status = status!,
                  ),

                  // Archived switch
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Selector<TaskUpsertVM, bool>(
                      selector: (_, vm) => vm.taskFormController.archived,
                      builder: (context, archived, _) => SwitchListTile(
                        title: const Text('Archived'),
                        value: archived,
                        onChanged: (v) => _taskFormController.archived = v,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
