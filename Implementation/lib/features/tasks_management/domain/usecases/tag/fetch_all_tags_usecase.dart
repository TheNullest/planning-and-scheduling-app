import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class FetchAllTagsUsecase extends GetAllUsecase<TagRepository, TagEntity> {
  FetchAllTagsUsecase(super.repository);
}
