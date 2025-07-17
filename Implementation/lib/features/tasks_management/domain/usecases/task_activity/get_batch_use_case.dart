import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class GetTaskActivitysUseCase
    extends FetcBatchAllUseCase<TaskActivityRepository, TaskActivityEntity> {
  GetTaskActivitysUseCase(super.repository);
}
