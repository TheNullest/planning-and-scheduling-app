import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetGoalBySubTaskUsecase
    extends UsecaseWithDynamicParams<GoalRepository, GoalEntity?, String> {
  GetGoalBySubTaskUsecase(super.repository);

  @override
  EResultFuture<GoalEntity?> call(UsecaseParams<String> params) async =>
      repository.getGoalBySubTaskId(
        params.param!,
        fromLocal: params.fromLocal,
        fromRemote: params.fromRemote,
      );
}
