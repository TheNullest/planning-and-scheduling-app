import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchGoalsUsecase extends UpdateBatchUsecase<GoalRepository, GoalEntity> {
  UpdateBatchGoalsUsecase(super.repository);
}
