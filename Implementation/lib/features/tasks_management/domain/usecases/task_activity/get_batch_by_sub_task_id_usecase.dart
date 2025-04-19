import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTaskActivitiesBySubTaskIdUsecase extends UsecaseWithParams<TaskActivityRepository,
    List<TaskActivityEntity>, DynamicParam<String>> {
  GetTaskActivitiesBySubTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<TaskActivityEntity>> call(DynamicParam<String> params) async =>
      repository.getBatchBySubTaskId(params.param, policy: params.policy);
}
