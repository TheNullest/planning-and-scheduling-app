import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/main_task_entity.dart';
import 'package:zamaan/domain/repositories/main_task_repository.dart';

class GetMainTasksByTagsUsecase extends UseCaseWithParams<MainTaskRepository,
    List<MainTaskEntity>, List<String>> {
  GetMainTasksByTagsUsecase(super.repository);

  /// [params] = List of tag ids
  @override
  ResultFuture<List<MainTaskEntity>> call(List<String> params) async =>
      repository.getMainTasksByTags(params);
}
