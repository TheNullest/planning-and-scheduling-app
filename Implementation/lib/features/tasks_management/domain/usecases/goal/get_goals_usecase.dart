import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetGoalsUsecase extends GetAllUsecase<GoalRepository, GoalEntity> {
  GetGoalsUsecase(super.repository);
}
