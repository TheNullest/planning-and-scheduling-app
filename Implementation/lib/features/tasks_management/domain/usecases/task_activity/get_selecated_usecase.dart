import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedTaskActivitiesUsecase
    extends GetByIdsUsecase<TaskActivityRepository, TaskActivityEntity> {
  GetSelectedTaskActivitiesUsecase(super.repository);
}
