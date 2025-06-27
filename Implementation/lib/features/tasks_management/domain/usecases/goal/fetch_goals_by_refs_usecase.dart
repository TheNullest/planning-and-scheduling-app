import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class FetchGoalsByRefsUsecase
    extends UsecaseWithParams<GoalRepository, List<GoalEntity>, List<String>> {
  FetchGoalsByRefsUsecase(super.repository);

  @override
  EResultFuture<List<GoalEntity>> call(List<String> params) async =>
      repository.getGoalsByRefIds(params);
}
