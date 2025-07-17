import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/category/category_chip.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/category/category_upsert_form.dart';

class CategoriesChipList extends StatelessWidget {
  const CategoriesChipList({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryVMsManager = context.read<CategoryVmsManager>();

    return Selector<CategoryVmsManager, bool>(
        selector: (_, vmsManager) => vmsManager.listUpdated,
        builder: (_, vms, __) {
          return Column(
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
                  onTap: () async => customShowModalBottomSheetDialog<CategoryUpsertVM>(
                      context, categoryVMsManager.newItem(), const CategoryUpsertFormWidget()),
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
          );
        });
  }
}
