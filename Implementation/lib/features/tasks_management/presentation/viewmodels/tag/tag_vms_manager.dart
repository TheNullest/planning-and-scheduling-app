import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/bases/vms_manager.dart';
import 'package:zamaan/features/tasks_management/presentation/viewmodels/tag/tag_upsert_vm.dart';

class TagVmsManager extends BaseVmsManager<TagEntity, TagUpsertVM> {
  TagVmsManager({
    required super.userId,
    required super.selectItem,
    required super.deselectItem,
    required this.taskId,
  });

  String? taskId;

  List<TagUpsertVM> get relatedItems => taskId != null
      ? persistedItems
          .where(
            (item) => taskId == item.taskId,
          )
          .toList()
      : [];

  List<TagUpsertVM> get itemsWithoutRelation =>
      persistedItems.where((item) => item.taskId == null).toList();

  @override
  TagUpsertVM newItem([TagUpsertVM? item]) => TagUpsertVM(userId: userId);

  @override
  TagUpsertVM toViewModel(TagEntity entity) => TagUpsertVM.fromEntity(entity: entity);
}
