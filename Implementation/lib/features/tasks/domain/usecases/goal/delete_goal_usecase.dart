import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';

class DeleteGoalUsecase extends DeleteEntityUseCase<GoalRepository> {
  DeleteGoalUsecase(super.repository);
}
