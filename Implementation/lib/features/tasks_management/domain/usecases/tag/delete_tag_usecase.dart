import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/delete_entity_usecase.dart';

class DeleteTagUsecase extends DeleteEntityUseCase<TagRepository> {
  DeleteTagUsecase(super.repository);
}
