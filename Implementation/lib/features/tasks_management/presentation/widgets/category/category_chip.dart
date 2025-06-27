import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/category/category_upsert_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_vms_manager.dart';

class CategoryChipWidget extends StatelessWidget {
  const CategoryChipWidget({required this.category, super.key, this.selectable = false});

  final CategoryUpsertVM category;
  final bool selectable;
  @override
  Widget build(BuildContext context) {
    final categoryVMsManager = context.read<CategoryVmsManager>();
    final vmFormController = category;

    return ChangeNotifierProvider<CategoryUpsertVM>.value(
      value: category,
      child: ValueListenableBuilder<bool>(
        valueListenable: category.isSelected,
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
                        categoryVMsManager.selectedItemsChanged(
                          category,
                          category.toggleSelection(),
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
                      Selector<CategoryUpsertVM, IconData>(
                        selector: (_, vm) => vm.icon,
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
                          categoryVMsManager,
                          category,
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
    CategoryVmsManager manager,
    CategoryUpsertVM category,
    bool isSelected,
    Color iconColor,
  ) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async => categoryUpsertDialog(context, category),
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
