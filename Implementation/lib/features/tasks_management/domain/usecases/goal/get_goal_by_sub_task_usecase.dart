import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetGoalBySubTaskUsecase
    extends UsecaseWithParams<GoalRepository, GoalEntity?, DynamicParam<String>> {
  GetGoalBySubTaskUsecase(super.repository);

  @override
  EResultFuture<GoalEntity?> call(DynamicParam<String> params) async =>
      repository.getGoalBySubTaskId(params.param, policy: params.policy);
}
