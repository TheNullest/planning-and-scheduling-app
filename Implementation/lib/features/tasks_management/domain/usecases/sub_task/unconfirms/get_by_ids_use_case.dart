import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetSubTasksByIdsUseCase
    extends GetBatchByIdsUseCase<SubTaskRepository, SubTaskEntity> {
  GetSubTasksByIdsUseCase(super.repository);
}
