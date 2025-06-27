import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedGoalsUsecase extends DeleteBatchUsecase<GoalRepository> {
  DeleteAllSelectedGoalsUsecase(super.repository);
}
