import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/domain/params/date_range_params.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

class GetTasksByDueDateUsecase
    extends UsecaseWithParams<TaskRepository, List<TaskEntity>, DateRangeParams> {
  GetTasksByDueDateUsecase(super.repository);

  @override
  EResultFuture<List<TaskEntity>> call(DateRangeParams params) async =>
      repository.getBatchByDueDateRange(
        dueDateFrom: params.fromDate,
        dueDateTo: params.toDate,
        fromLocal: params.fromLocal,
        fromRemote: params.fromRemote,
      );
}
