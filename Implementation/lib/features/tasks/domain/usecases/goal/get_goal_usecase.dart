import 'package:zamaan/domain/entities/goal_entity.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/get_entity_usecase.dart';

class GetGoalUsecase extends GetEntityUseCase<GoalRepository, GoalEntity> {
  GetGoalUsecase(super.repository);
}
