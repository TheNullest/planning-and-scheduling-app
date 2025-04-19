import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetGoalsTaskUsecase
    extends UsecaseWithParams<GoalRepository, List<GoalEntity>, DynamicParam<String>> {
  GetGoalsTaskUsecase(super.repository);

  @override
  EResultFuture<List<GoalEntity>> call(DynamicParam<String> params) async =>
      repository.getGoalsByTaskId(params.param, policy: params.policy);
}
