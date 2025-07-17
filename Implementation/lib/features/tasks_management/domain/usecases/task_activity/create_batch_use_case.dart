import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchTaskActivitiesUseCase
    extends CreateBatchUseCase<TaskActivityRepository, TaskActivityEntity> {
  CreateBatchTaskActivitiesUseCase(super.repository);
}
