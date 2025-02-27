import 'package:zamaan/domain/usecases/delete_entities_usecase.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';

class DeleteAllSelectedTagsUsecase
    extends DeleteEntitiesUseCase<TagRepository> {
  DeleteAllSelectedTagsUsecase(super.repository);
}
