import 'package:zamaan/core/usecases/base_usecase.dart';
import 'package:zamaan/core/utils/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/task/domain/entities/main_task_entity.dart';
import 'package:zamaan/features/task/domain/repositories/main_task_repository.dart';

class GetMainTasksByStatusUsecase extends UseCaseWithParams<MainTaskEntity,
    MainTaskRepository, List<MainTaskEntity>, Status> {
  GetMainTasksByStatusUsecase(super.repository);

  @override
  ResultFuture<List<MainTaskEntity>> call(Status params) async =>
      await repository.getMainTasksByStatus(params);
}