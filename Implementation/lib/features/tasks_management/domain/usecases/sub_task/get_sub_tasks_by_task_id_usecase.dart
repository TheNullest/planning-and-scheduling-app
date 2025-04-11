import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetSubTasksByTaskIdUsecase
    extends UsecaseWithDynamicParams<SubTaskRepository, List<SubTaskEntity>, String> {
  GetSubTasksByTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<SubTaskEntity>> call(UsecaseParams<String> params) async =>
      repository.getBatchByTaskId(
        params.param!,
        fromLocal: params.fromLocal,
        fromRemote: params.fromRemote,
      );
}
