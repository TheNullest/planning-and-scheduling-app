import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchTaskActivitiesUsecase
    extends CreateBatchUsecase<TaskActivityRepository, TaskActivityEntity> {
  CreateBatchTaskActivitiesUsecase(super.repository);
}
