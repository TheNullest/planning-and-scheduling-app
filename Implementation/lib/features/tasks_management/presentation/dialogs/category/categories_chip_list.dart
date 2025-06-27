import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/category/category_upsert_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/category/category_chip.dart';

Future<void> categoriesChipListDialog(
        BuildContext context, CategoryVmsManager categoryVMsManager) async =>
    showModalBottomSheet(
      context: context,
      builder: (_) => ChangeNotifierProvider<CategoryVmsManager>.value(
        value: categoryVMsManager,
        child: const _CategoriesChipList(),
      ),
    );

class _CategoriesChipList extends StatelessWidget {
  const _CategoriesChipList();

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
                    onTap: () async => categoryUpsertDialog(context, categoryVMsManager.newItem()),
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
