import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class FetchGoalsByRefsUseCase
    extends UseCaseWithParams<GoalRepository, List<GoalEntity>, List<String>> {
  FetchGoalsByRefsUseCase(super.repository);

  @override
  EResultFuture<List<GoalEntity>> call(List<String> params) async =>
      repository.getGoalsByRefIds(params);
}
