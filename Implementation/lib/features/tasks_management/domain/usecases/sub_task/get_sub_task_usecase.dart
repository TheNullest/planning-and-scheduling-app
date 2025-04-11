import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetSubTaskUsecase extends GetByIdUsecase<SubTaskRepository, SubTaskEntity> {
  GetSubTaskUsecase(super.repository);
}
