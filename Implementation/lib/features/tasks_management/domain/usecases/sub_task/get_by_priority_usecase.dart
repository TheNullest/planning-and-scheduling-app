import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetSubTasksByPriorityUsecase
    extends UsecaseWithDynamicParams<SubTaskRepository, List<SubTaskEntity>, Priority> {
  GetSubTasksByPriorityUsecase(super.repository);

  @override
  EResultFuture<List<SubTaskEntity>> call(UsecaseParams<Priority> params) async =>
      repository.getBatchByPriority(
        params.param!,
        fromLocal: params.fromLocal,
        fromRemote: params.fromRemote,
      );
}
