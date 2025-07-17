import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class GetSelectedGoalsUseCase extends FetchBatchByIdsUseCase<GoalRepository, GoalEntity> {
  GetSelectedGoalsUseCase(super.repository);
}
