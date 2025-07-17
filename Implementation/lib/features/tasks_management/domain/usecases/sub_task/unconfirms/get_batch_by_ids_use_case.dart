import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class GetBatchSubTasksByIdsUseCase
    extends FetchBatchByIdsUseCase<SubTaskRepository, SubTaskEntity> {
  GetBatchSubTasksByIdsUseCase(super.repository);
}
