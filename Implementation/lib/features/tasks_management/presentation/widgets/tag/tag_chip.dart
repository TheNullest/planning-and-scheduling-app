import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/tag/tag_upsert_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_vms_manager.dart';

class TagChipWidget extends StatelessWidget {
  const TagChipWidget({required this.tag, super.key, this.selectable = false});

  final TagUpsertVM tag;
  final bool selectable;
  @override
  Widget build(BuildContext context) {
    final tagVMsManager = context.read<TagVmsManager>();
    final vmFormController = tag.vmFormController;

    return ChangeNotifierProvider<TagUpsertVM>.value(
      value: tag,
      child: ValueListenableBuilder<bool>(
        valueListenable: tag.isSelected,
        builder: (_, isSelected, __) {
          final chipBgColor = isSelected
              ? vmFormController.color
              : Color.lerp(vmFormController.color, Colors.black, 0.8)!; // 0.8 makes it much darker
          final brightness = ThemeData.estimateBrightnessForColor(chipBgColor);
          final luminance = chipBgColor.computeLuminance();
          final isDark = luminance < 0.8 && brightness == Brightness.dark;
          final readableForeground = isDark ? Colors.white : Colors.black87;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
            child: Material(
              color: chipBgColor,
              elevation: selectable && isSelected ? 4 : 1,
              borderRadius: BorderRadius.circular(24),
              child: InkWell(
                borderRadius: BorderRadius.circular(24),
                onTap: selectable
                    ? () {
                        tagVMsManager.selectedItemsChanged(
                          tag,
                          tag.toggleSelection(),
                        );
                      }
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Selection indicator
                      if (selectable)
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.white : Colors.transparent,
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(
                                  color: isSelected ? vmFormController.color : Colors.grey.shade400,
                                  width: 2,
                                ),
                              ),
                              child: isSelected
                                  ? Icon(Icons.check, size: 16, color: vmFormController.color)
                                  : null,
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),

                      // Icon
                      Selector<TagUpsertVM, IconData>(
                        selector: (_, vm) => vm.vmFormController.icon,
                        builder: (_, icon, __) => Icon(
                          icon,
                          size: 20,
                          color: readableForeground,
                        ),
                      ),
                      const SizedBox(width: 8),

                      // Title
                      Text(
                        vmFormController.title,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: readableForeground,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 10),

                      // Edit button
                      if (selectable)
                        _buildEditButton(
                          context,
                          tagVMsManager,
                          tag,
                          isSelected,
                          readableForeground,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEditButton(
    BuildContext context,
    TagVmsManager manager,
    TagUpsertVM tag,
    bool isSelected,
    Color iconColor,
  ) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          manager.addListenersToVm(tag);
          manager.viewStates.isItNew = false;
          return showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            isDismissible: false,
            elevation: 10,
            builder: (_) => ChangeNotifierProvider.value(
              value: manager,
              child: TagUpsertDialog(tag),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Icon(
            Icons.edit_outlined,
            size: 18,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
