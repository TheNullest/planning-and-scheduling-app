import 'package:zamaan/domain/entities/goal_entity.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/update_entity_usecase.dart';

class UpdateGoalUsecase
    extends UpdateEntityUseCase<GoalEntity, GoalRepository> {
  UpdateGoalUsecase(super.repository);
}
