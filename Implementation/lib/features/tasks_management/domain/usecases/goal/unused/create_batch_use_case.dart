import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchGoalsUseCase extends CreateBatchUseCase<GoalRepository, GoalEntity> {
  CreateBatchGoalsUseCase(super.repository);
}
