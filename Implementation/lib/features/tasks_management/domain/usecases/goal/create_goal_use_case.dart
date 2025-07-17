import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateGoalUseCase extends CreateUseCase<GoalRepository, GoalEntity> {
  CreateGoalUseCase(super.repository);
}
