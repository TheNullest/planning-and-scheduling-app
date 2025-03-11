import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/delete_entities_usecase.dart';

class DeleteAllSelectedGoalsUsecase
    extends DeleteEntitiesUseCase<GoalRepository> {
  DeleteAllSelectedGoalsUsecase(super.repository);
}
