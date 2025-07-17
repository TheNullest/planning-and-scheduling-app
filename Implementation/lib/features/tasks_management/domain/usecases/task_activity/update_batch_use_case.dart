import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchTaskActivitiesUseCase
    extends UpdateBatchUseCase<TaskActivityRepository, TaskActivityEntity> {
  UpdateBatchTaskActivitiesUseCase(super.repository);
}
