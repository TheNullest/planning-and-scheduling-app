import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteAllSelectedGoalsUseCase extends DeleteBatchUseCase<GoalRepository> {
  DeleteAllSelectedGoalsUseCase(super.repository);
}
