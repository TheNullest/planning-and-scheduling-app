import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class GetSubTasksUseCase extends FetcBatchAllUseCase<SubTaskRepository, SubTaskEntity> {
  GetSubTasksUseCase(super.repository);
}
