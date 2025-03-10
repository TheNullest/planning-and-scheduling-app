import 'package:zamaan/domain/entities/goal_entity.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/get_entities_usecase.dart';

class GetGoalsUsecase extends GetEntitiesUseCase<GoalRepository, GoalEntity> {
  GetGoalsUsecase(super.repository);
}
