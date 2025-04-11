import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task_activity.dart';
import 'package:zamaan/domain/repositories/time_interval_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTaskActivityBySubTaskIdUsecase extends UseCaseWithParams<
    TaskActivityRepository, List<TaskActivityEntity>, String> {
  GetTaskActivityBySubTaskIdUsecase(super.repository);

  @override
  EResultFuture<List<TaskActivityEntity>> call(String params) async =>
      repository.getTaskActivityBySubTaskId(params);
}
