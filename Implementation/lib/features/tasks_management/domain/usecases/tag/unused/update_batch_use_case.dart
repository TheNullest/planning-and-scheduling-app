import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchTagsUseCase extends UpdateBatchUseCase<TagRepository, TagEntity> {
  UpdateBatchTagsUseCase(super.repository);
}
