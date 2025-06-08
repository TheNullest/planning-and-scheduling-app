import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/category/category_upsert_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/category/category_chip.dart';

class CategoriesChipListDialog extends StatelessWidget {
  const CategoriesChipListDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryVMsManager = context.read<CategoryVmsManager>();

    return Selector<CategoryVmsManager, bool>(
        selector: (_, vmsManager) => vmsManager.listUpdated,
        builder: (_, vms, __) {
          return Container(
            padding: const EdgeInsets.all(10),
            width: context.mediaQueryWidth,
            constraints: BoxConstraints(
              minHeight: context.mediaQueryHeight / 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Select From Categories :'),
                20.sizedBoxHeight,
                Wrap(children: [
                  ...categoryVMsManager.items.map(
                    (category) => CategoryChipWidget(
                      selectable: true,
                      category: category,
                    ),
                  ),
                  // Add New Category
                  GestureDetector(
                    onTap: () async {
                      final cat = categoryVMsManager.newItem();
                      return showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        isDismissible: false,
                        elevation: 5,
                        builder: (_) => ChangeNotifierProvider<CategoryVmsManager>.value(
                          value: categoryVMsManager,
                          child: CategoryUpsertDialog(cat),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add, color: Theme.of(context).colorScheme.primary),
                          const SizedBox(width: 6),
                          Text(
                            'Add Category',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          );
        });
  }
}
