import 'package:zamaan/core/usecases/delete_entities_usecase.dart';
import 'package:zamaan/features/goal/domain/repositories/goal_repository.dart';

class DeleteAllSelectedGoalsUsecase
    extends DeleteEntitiesUseCase<GoalRepository> {
  DeleteAllSelectedGoalsUsecase(super.repository);
}
