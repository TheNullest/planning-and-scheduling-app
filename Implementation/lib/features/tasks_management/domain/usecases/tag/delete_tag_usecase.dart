import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteTagUsecase extends DeleteUsecase<TagRepository> {
  DeleteTagUsecase(super.repository);
}
