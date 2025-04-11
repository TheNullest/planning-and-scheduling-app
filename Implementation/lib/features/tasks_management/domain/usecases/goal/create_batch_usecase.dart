import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchGoalsUsecase extends CreateBatchUsecase<GoalRepository, GoalEntity> {
  CreateBatchGoalsUsecase(super.repository);
}
