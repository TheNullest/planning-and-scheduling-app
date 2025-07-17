import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/task_activity_repository.dart';
import 'package:zamaan/domain/useCases/fetch_by_id_use_case.dart';

class GetTaskActivityUseCase extends FetchByIdUseCase<TaskActivityRepository, TaskActivityEntity> {
  GetTaskActivityUseCase(super.repository);
}
