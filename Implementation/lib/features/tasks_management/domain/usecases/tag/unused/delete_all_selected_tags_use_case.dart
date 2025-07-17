import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteAllSelectedTagsUseCase extends DeleteBatchUseCase<TagRepository> {
  DeleteAllSelectedTagsUseCase(super.repository);
}
