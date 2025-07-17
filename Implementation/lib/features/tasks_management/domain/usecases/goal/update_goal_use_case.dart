import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateGoalUseCase extends UpdateUseCase<GoalEntity, GoalRepository> {
  UpdateGoalUseCase(super.repository);
}
