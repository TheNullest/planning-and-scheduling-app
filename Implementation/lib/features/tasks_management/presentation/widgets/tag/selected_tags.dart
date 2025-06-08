import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/num.dart';
import 'package:zamaan/features/tasks_management/presentation/blocs/tags/tags_manager_bloc.dart';
import 'package:zamaan/features/tasks_management/presentation/dialogs/tag/tags_chip_list.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/widgets/tag/tag_chip.dart';

class SelectedTagsWidget extends StatelessWidget {
  const SelectedTagsWidget({required this.selectedIds, super.key});

  final List<String> selectedIds;

  @override
  Widget build(BuildContext context) {
    context.read<TagsManagerBloc>().add(const TagsManagerEvent.started());
    final tagVMsManager = context.read<TagVmsManager>();

    return BlocListener<TagsManagerBloc, TagsManagerState>(
        listenWhen: (pervious, current) => current != pervious,
        listener: (context, state) => state.maybeWhen(
            fetched: (tags) => tagVMsManager
              ..initItems(tags)
              ..initSelectedItems(selectedIds),
            created: (cat) {
              tagVMsManager.addToItems(cat);
              Navigator.pop(context);
              return;
            },
            updated: tagVMsManager.itemIsUpdated,
            deleted: (_) => Navigator.pop(context),
            orElse: () => null),
        child: SingleChildScrollView(
          child: Selector<TagVmsManager, bool>(
              selector: (_, vmsTag) => vmsTag.listUpdated,
              builder: (_, __, ___) {
                return Column(
                  children: [
                    Wrap(
                      children: [
                        ...tagVMsManager.selectedItems.map(
                          (tag) => TagChipWidget(
                            tag: tag,
                          ),
                        ),
                      ],
                    ),
                    12.sizedBoxHeight,
                    ElevatedButton.icon(
                        label: Text(
                            tagVMsManager.selectedItems.isEmpty ? 'Select Cats' : 'Add More Tags'),
                        icon: const Icon(Icons.add),
                        onPressed: () async => showModalBottomSheet(
                            context: context,
                            builder: (_) => ChangeNotifierProvider<TagVmsManager>.value(
                                value: tagVMsManager, child: const TagsChipListDialog()))),
                  ],
                );
              }),
        ));
  }
}
