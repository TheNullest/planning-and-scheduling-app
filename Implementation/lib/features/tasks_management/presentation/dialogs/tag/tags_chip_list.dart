import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/tag/tag_upsert_dialog.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/tag/tag_chip.dart';

Future<void> tagsChipListDialog(BuildContext context, TagVmsManager category) async =>
    showModalBottomSheet(
      context: context,
      builder: (_) => ChangeNotifierProvider<TagVmsManager>.value(
        value: category,
        child: _TagsChipList(),
      ),
    );

class _TagsChipList extends StatelessWidget {
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
                  ...tagVMsManager.itemsWithoutRelation.map(
                    (tag) => TagChipWidget(
                      selectable: true,
                      tag: tag,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Divider(
                      height: 1,
                      thickness: .5,
                    ),
                  ),
                  ...tagVMsManager.relatedItems.map(
                    (tag) => TagChipWidget(
                      selectable: true,
                      tag: tag,
                    ),
                  ),
                  // Add New Tag
                  GestureDetector(
                    onTap: () async =>
                        tagUpsertDialog(context, tagVMsManager.newItem(), tagVMsManager.taskId),
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
