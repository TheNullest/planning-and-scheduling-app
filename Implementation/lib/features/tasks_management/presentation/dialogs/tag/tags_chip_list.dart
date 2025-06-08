import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/tag/tag_upsert_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/tag/tag_chip.dart';

class TagsChipListDialog extends StatelessWidget {
  const TagsChipListDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final tagVMsManager = context.read<TagVmsManager>();

    return Selector<TagVmsManager, bool>(
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
                const Text('Select From Tags :'),
                20.sizedBoxHeight,
                Wrap(children: [
                  ...tagVMsManager.items.map(
                    (tag) => TagChipWidget(
                      selectable: true,
                      tag: tag,
                    ),
                  ),
                  // Add New Tag
                  GestureDetector(
                    onTap: () async {
                      final cat = tagVMsManager.newItem();
                      return showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        isDismissible: false,
                        elevation: 5,
                        builder: (_) => ChangeNotifierProvider<TagVmsManager>.value(
                          value: tagVMsManager,
                          child: TagUpsertDialog(cat),
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
                            'Add Tag',
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
