import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetMainTasksByStatusUsecase extends UseCaseWithParams<MainTaskRepository,
    List<MainTaskEntity>, Status> {
  GetMainTasksByStatusUsecase(super.repository);

  @override
  ResultFuture<List<MainTaskEntity>> call(Status params) async =>
      repository.getMainTasksByStatus(params);
}
