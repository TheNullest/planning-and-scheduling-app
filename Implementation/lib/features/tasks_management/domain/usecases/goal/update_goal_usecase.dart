import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateGoalUsecase extends UpdateUsecase<GoalEntity, GoalRepository> {
  UpdateGoalUsecase(super.repository);
}
