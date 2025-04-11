import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteGoalUsecase extends DeleteUsecase<GoalRepository> {
  DeleteGoalUsecase(super.repository);
}
