import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateGoalUsecase extends CreateUsecase<GoalRepository, GoalEntity> {
  CreateGoalUsecase(super.repository);
}
