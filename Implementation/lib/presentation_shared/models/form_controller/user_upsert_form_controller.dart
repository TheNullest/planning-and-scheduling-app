import 'package:zamaan/domain/entities/user.dart';
import 'package:zamaan/presentation_shared/models/form_controller/base_form_controller.dart';

class UserUpsertFormController extends BaseFormController<UserEntity> {
  UserUpsertFormController({required super.userId});

  UserUpsertFormController.fromEntity({required UserEntity entity}) : super(userId: entity.userId) {
    initialize(entity);
  }

  @override
  void clear() {
    // TODO: implement clear
  }

  @override
  void initialize([UserEntity? entity]) {
    // TODO: implement initialize
  }

  @override
  // TODO: implement toEntity
  UserEntity get toEntity => throw UnimplementedError();
}
