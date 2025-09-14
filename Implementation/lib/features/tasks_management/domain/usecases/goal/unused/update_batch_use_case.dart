import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateGoalsUseCase extends UpdateUseCase<GoalRepository, GoalEntity> {
  UpdateGoalsUseCase(super.repository);
}
