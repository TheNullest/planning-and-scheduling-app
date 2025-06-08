import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedTagsUsecase extends DeleteBatchUsecase<TagRepository> {
  DeleteAllSelectedTagsUsecase(super.repository);
}
