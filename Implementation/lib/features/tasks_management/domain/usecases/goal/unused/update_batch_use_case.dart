import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchGoalsUseCase extends UpdateBatchUseCase<GoalRepository, GoalEntity> {
  UpdateBatchGoalsUseCase(super.repository);
}
