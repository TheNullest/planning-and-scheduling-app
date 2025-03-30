import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetMainTasksByDueDateUsecase extends UseCaseWithParams<MainTaskRepository,
    List<MainTaskEntity>, DateTime> {
  GetMainTasksByDueDateUsecase(super.repository);

  @override
  EResultFuture<List<MainTaskEntity>> call(DateTime params) async =>
      repository.getMainTasksByDueDate(params);
}
