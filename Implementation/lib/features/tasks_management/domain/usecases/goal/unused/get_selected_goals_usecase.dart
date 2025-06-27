import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedGoalsUsecase extends GetByIdsUsecase<GoalRepository, GoalEntity> {
  GetSelectedGoalsUsecase(super.repository);
}
