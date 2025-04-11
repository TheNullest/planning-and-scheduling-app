import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_scheduler.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/task_scheduler_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTaskSchedulerByTaskIdUsecase
    extends UsecaseWithDynamicParams<TaskSchedulerRepository, List<TaskSchedulerEntity>, String> {
  GetTaskSchedulerByTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<TaskSchedulerEntity>> call(UsecaseParams<String> params) async =>
      repository.getBatchByTaskId(
        params.param!,
        fromLocal: params.fromLocal,
        fromRemote: params.fromRemote,
      );
}
