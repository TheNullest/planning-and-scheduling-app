import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/categories/categories_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/category/categories_chip_list.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/category/category_chip.dart';

class SelectedCategoriesWidget extends StatelessWidget {
  const SelectedCategoriesWidget({required this.selectedIds, super.key});

  final List<String> selectedIds;

  @override
  Widget build(BuildContext context) {
    context.read<CategoriesManagerBloc>().add(const CategoriesManagerEvent.started());
    final categoryVMsManager = context.read<CategoryVmsManager>();

    return BlocListener<CategoriesManagerBloc, CategoriesManagerState>(
        listenWhen: (pervious, current) => current != pervious,
        listener: (context, state) => state.maybeWhen(
            loaded: (cats) => categoryVMsManager
              ..initItems(cats)
              ..initSelectedItems(itemIds: selectedIds),
            created: (cat) {
              categoryVMsManager.onEntityCreated(cat);
              Navigator.pop(context);
              return;
            },
            updated: (cat) => categoryVMsManager.itemIsUpdated(cat),
            deleted: (_) => Navigator.pop(context),
            orElse: () => null),
        child: SingleChildScrollView(
          child: Selector<CategoryVmsManager, List<CategoryUpsertVM>>(
              selector: (_, vmsCategory) => vmsCategory.selectedItems,
              builder: (_, selectedCategories, ___) {
                return Column(
                  children: [
                    Wrap(
                      children: [
                        ...selectedCategories.map(
                          (category) => CategoryChipWidget(
                            category: category,
                          ),
                        ),
                      ],
                    ),
                    12.sizedBoxHeight,
                    ElevatedButton.icon(
                        label: Text(categoryVMsManager.selectedItems.isEmpty
                            ? 'Select Categories'
                            : 'Add More Categories'),
                        icon: const Icon(Icons.add),
                        onPressed: () async => customShowModalBottomSheetDialog<CategoryVmsManager>(
                              context,
                              categoryVMsManager,
                              const CategoriesChipList(),
                            )),
                  ],
                );
              }),
        ));
  }
}
