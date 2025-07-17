import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class GetSelectedTaskActivitiesUseCase
    extends FetchBatchByIdsUseCase<TaskActivityRepository, TaskActivityEntity> {
  GetSelectedTaskActivitiesUseCase(super.repository);
}
