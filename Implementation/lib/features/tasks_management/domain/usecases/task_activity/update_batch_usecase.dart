import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchTaskActivitiesUsecase
    extends UpdateBatchUsecase<TaskActivityRepository, TaskActivityEntity> {
  UpdateBatchTaskActivitiesUsecase(super.repository);
}
