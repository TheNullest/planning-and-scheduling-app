import 'package:zamaan/domain/entities/sub_task.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateSubTaskUsecase extends CreateUsecase<SubTaskRepository, SubTaskEntity> {
  CreateSubTaskUsecase(super.repository);
}
