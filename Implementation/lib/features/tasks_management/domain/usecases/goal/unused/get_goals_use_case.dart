import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/get_use_case.dart';

class GetGoalsUseCase extends FetcBatchAllUseCase<GoalRepository, GoalEntity> {
  GetGoalsUseCase(super.repository);
}
