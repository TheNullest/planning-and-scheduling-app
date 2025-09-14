import 'package:zamaan/features/tasks_management/presentation/viewmodels/category/category_list_item_vm.dart';

class TagListItemVm extends CategoryListItemVm {
  TagListItemVm(
      {required super.id, required super.label, required super.color, required super.icon});

  TagListItemVm.fromEntity(super.entity) : super.fromEntity();
}
