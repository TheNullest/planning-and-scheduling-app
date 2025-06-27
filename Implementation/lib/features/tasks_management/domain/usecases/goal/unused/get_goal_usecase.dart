import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetGoalUsecase extends GetByIdUsecase<GoalRepository, GoalEntity> {
  GetGoalUsecase(super.repository);
}
