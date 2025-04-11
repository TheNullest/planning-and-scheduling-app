import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByCategoriesUsecase
    extends UsecaseWithDynamicParams<TaskRepository, List<TaskEntity>, List<String>> {
  GetTasksByCategoriesUsecase(super.repository);

  @override
  EResultFuture<List<TaskEntity>> call(UsecaseParams<List<String>> params) async =>
      repository.getBatchByCategories(
        params.param!,
        fromLocal: params.fromLocal,
        fromRemote: params.fromRemote,
      );
}
