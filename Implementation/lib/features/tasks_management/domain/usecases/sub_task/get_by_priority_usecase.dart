import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetSubTasksByPriorityUsecase
    extends UsecaseWithParams<SubTaskRepository, List<SubTaskEntity>, DynamicParam<Priority>> {
  GetSubTasksByPriorityUsecase(super.repository);

  @override
  EResultFuture<List<SubTaskEntity>> call(DynamicParam<Priority> params) async =>
      repository.getBatchByPriority(params.param, policy: params.policy);
}
