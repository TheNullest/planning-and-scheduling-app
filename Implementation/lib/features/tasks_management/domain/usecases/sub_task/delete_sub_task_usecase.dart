import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteSubTaskUsecase extends DeleteUsecase<SubTaskRepository> {
  DeleteSubTaskUsecase(super.repository);
}
