import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/features/tasks_management/presentation/form_controllers/tag_form_controller.dart';

import 'package:zamaan/presentation_shared/models/viewmodels/base_vm.dart';

class TagUpsertVM extends BaseViewModel<TagFormController> {
  TagUpsertVM({
    required String userId,
  }) : super(
            vmFormController: TagFormController(
          userId: userId,
        ));

  TagUpsertVM.fromEntity({
    required TagEntity category,
  }) : super(vmFormController: TagFormController.fromEntity(entity: category));

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
