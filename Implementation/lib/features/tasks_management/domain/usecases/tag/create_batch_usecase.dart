import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchTagsUsecase extends CreateBatchUsecase<TagRepository, TagEntity> {
  CreateBatchTagsUsecase(super.repository);
}
