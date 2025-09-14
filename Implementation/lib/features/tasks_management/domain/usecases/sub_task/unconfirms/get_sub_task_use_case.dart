import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/useCases/get_by_id_use_case.dart';

class GetSubTaskUseCase extends GetByIdUseCase<SubTaskRepository, SubTaskEntity> {
  GetSubTaskUseCase(super.repository);
}
