import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchTagsUsecase extends UpdateBatchUsecase<TagRepository, TagEntity> {
  UpdateBatchTagsUsecase(super.repository);
}
