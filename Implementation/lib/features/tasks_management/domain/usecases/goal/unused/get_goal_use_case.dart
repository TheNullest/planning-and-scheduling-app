import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/get_by_id_use_case.dart';

class GetGoalUseCase extends GetByIdUseCase<GoalRepository, GoalEntity> {
  GetGoalUseCase(super.repository);
}
