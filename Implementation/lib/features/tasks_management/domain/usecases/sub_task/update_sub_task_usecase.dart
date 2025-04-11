import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateSubTaskUsecase extends UpdateUsecase<SubTaskEntity, SubTaskRepository> {
  UpdateSubTaskUsecase(super.repository);
}
