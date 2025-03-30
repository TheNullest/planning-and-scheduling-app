import 'package:zamaan/domain/entities/goal_entity.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/create_entity_usecase.dart';

class CreateGoalUsecase
    extends CreateEntityUseCase<GoalRepository, GoalEntity> {
  CreateGoalUsecase(super.repository);
}
