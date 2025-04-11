import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByStatusUsecase
    extends UsecaseWithDynamicParams<TaskRepository, List<TaskEntity>, TaskStatus> {
  GetTasksByStatusUsecase(super.repository);

  @override
  EResultFuture<List<TaskEntity>> call(UsecaseParams<TaskStatus> params) async =>
      repository.getBatchByStatus(
        params.param!,
        fromLocal: params.fromLocal,
        fromRemote: params.fromRemote,
      );
}
