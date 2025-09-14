import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetSelectedGoalsUseCase extends GetBatchByIdsUseCase<GoalRepository, GoalEntity> {
  GetSelectedGoalsUseCase(super.repository);
}
