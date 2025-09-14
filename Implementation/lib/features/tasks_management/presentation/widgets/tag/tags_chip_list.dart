import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/tag/tag_chip.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/tag/tag_upsert_form.dart';

class TagsChipListWiget extends StatelessWidget {
  const TagsChipListWiget({super.key});

  @override
  Widget build(BuildContext context) {
    final tagVMsManager = context.read<TagVmsManager>();

    return Selector<TagVmsManager, bool>(
        selector: (_, vmsManager) => vmsManager.isListUpdated,
        builder: (_, vms, __) {
          return Column(
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
                // Add New Tag
                InkWell(
                  onTap: () async => customShowModalBottomSheetDialog<TagUpsertVM>(
                      context, tagVMsManager.newItem(), TagUpsertFormWidget(tagVMsManager.taskId)),
                  customBorder: const StadiumBorder(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
              10.sizedBoxHeight,
              const Divider(
                height: 1,
                indent: 2,
                thickness: .5,
                endIndent: 5,
              ),
              10.sizedBoxHeight,
              Wrap(
                children: [
                  ...tagVMsManager.relatedItems.map(
                    (tag) => TagChipWidget(
                      selectable: true,
                      tag: tag,
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }
}
