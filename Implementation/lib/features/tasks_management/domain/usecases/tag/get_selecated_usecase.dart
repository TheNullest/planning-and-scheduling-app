import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedTagsUsecase extends GetByIdsUsecase<TagRepository, TagEntity> {
  GetSelectedTagsUsecase(super.repository);
}
