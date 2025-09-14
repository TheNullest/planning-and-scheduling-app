import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tags/tags_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tasks/tasks_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/custom_show_modal_bottom_sheet.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_upsert_vm.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/tag/tag_chip.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/tag/tags_chip_list.dart';

class SelectedTagsWidget extends StatelessWidget {
  const SelectedTagsWidget({required this.selectedIds, super.key});

  final List<String> selectedIds;
  @override
  Widget build(BuildContext context) {
    context.read<TagsManagerBloc>().add(const TagsManagerEvent.started());
    final tagVMsManager = context.read<TagVmsManager>();

    return MultiBlocListener(
      listeners: [
        BlocListener<TagsManagerBloc, TagsManagerState>(
          listenWhen: (pervious, current) => current != pervious,
          listener: (context, state) => state.maybeWhen(
              loaded: (tags) => tagVMsManager
                ..initItems(tags)
                ..initSelectedItems(itemIds: selectedIds),
              created: (cat) {
                tagVMsManager.addNewPersistedItem(cat);
                Navigator.pop(context);
                return;
              },
              updated: tagVMsManager.itemIsUpdated,
              deleted: (_) => Navigator.pop(context),
              orElse: () => null),
        ),
        BlocListener<TasksManagerBloc, TasksManagerState>(
          listenWhen: (pervious, current) => current != pervious,
          listener: (context, state) =>
              state.maybeWhen(taskCreated: (id) => tagVMsManager.taskId = id, orElse: () => null),
        )
      ],
      child: SingleChildScrollView(
        child: Selector<TagVmsManager, List<TagUpsertVM>>(
            selector: (_, vmsTag) => vmsTag.selectedItems,
            builder: (_, selectedTags, ___) {
              return Column(
                children: [
                  Wrap(
                    children: [
                      ...selectedTags.map(
                        (tag) => TagChipWidget(
                          tag: tag,
                        ),
                      ),
                    ],
                  ),
                  12.sizedBoxHeight,
                  ElevatedButton.icon(
                      label: Text(
                          tagVMsManager.selectedItems.isEmpty ? 'Select tags' : 'Add More Tags'),
                      icon: const Icon(Icons.add),
                      onPressed: () async => customShowModalBottomSheetDialog<TagVmsManager>(
                          context, tagVMsManager, const TagsChipListWiget())),
                  12.sizedBoxHeight,
                ],
              );
            }),
      ),
    );
  }
}
