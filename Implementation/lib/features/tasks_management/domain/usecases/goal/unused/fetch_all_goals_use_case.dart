import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class FetchAllGoalsUseCase extends FetcBatchAllUseCase<GoalRepository, GoalEntity> {
  FetchAllGoalsUseCase(super.repository);
}
