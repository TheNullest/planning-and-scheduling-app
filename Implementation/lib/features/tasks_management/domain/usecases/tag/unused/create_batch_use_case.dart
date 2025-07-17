import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchTagsUseCase extends CreateBatchUseCase<TagRepository, TagEntity> {
  CreateBatchTagsUseCase(super.repository);
}
