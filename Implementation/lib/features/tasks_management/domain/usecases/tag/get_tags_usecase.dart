import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetTagsUsecase extends GetAllUsecase<TagRepository, TagEntity> {
  GetTagsUsecase(super.repository);
}
