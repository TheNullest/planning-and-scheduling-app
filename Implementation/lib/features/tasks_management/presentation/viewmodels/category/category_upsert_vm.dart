import 'package:zamaan/domain/entities/category.dart';
import 'package:zamaan/features/tasks_management/presentation/form_controllers/category_form_controller.dart';

import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class CategoryUpsertVM extends BaseViewModel<CategoryFormController> {
  CategoryUpsertVM({
    required String userId,
  }) : super(
            vmFormController: CategoryFormController(
          userId: userId,
        ));

  CategoryUpsertVM.fromEntity({
    required CategoryEntity category,
  }) : super(vmFormController: CategoryFormController.fromEntity(entity: category));

  @override
  void dispose() {
    isLocked.value = true;

    vmFormController
      ..resetValues()
      ..removeListener(notifyListeners)
      ..isModified.removeListener(notifyListeners)
      ..canUpsert.removeListener(notifyListeners)
      ..dispose();
    super.dispose();
  }
}
