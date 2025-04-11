import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/goal.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/goal_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetGoalsTaskUsecase
    extends UsecaseWithDynamicParams<GoalRepository, List<GoalEntity>, String> {
  GetGoalsTaskUsecase(super.repository);

  @override
  EResultFuture<List<GoalEntity>> call(UsecaseParams<String> params) async =>
      repository.getGoalsByTaskId(
        params.param!,
        fromLocal: params.fromLocal,
        fromRemote: params.fromRemote,
      );
}
