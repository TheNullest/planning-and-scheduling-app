import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetSelectedTaskActivitiesUseCase
    extends GetBatchByIdsUseCase<TaskActivityRepository, TaskActivityEntity> {
  GetSelectedTaskActivitiesUseCase(super.repository);
}
