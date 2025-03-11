import 'package:zamaan/domain/entities/tag_entity.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/get_entities_usecase.dart';

class GetTagsUsecase extends GetEntitiesUseCase<TagRepository, TagEntity> {
  GetTagsUsecase(super.repository);
}
