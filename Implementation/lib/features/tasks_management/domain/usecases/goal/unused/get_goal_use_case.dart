import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/fetch_by_id_use_case.dart';

class GetGoalUseCase extends FetchByIdUseCase<GoalRepository, GoalEntity> {
  GetGoalUseCase(super.repository);
}
