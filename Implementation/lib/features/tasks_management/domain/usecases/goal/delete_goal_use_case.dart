import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteGoalUseCase extends DeleteUseCase<GoalRepository> {
  DeleteGoalUseCase(super.repository);
}
