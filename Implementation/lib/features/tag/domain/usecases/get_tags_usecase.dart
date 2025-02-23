import 'package:zamaan/core/usecases/get_entities_usecase.dart';
import 'package:zamaan/features/tag/domain/entities/tag_entity.dart';
import 'package:zamaan/features/tag/domain/repositories/tag_repository.dart';

class GetTagsUsecase extends GetEntitiesUseCase<TagRepository, TagEntity> {
  GetTagsUsecase(super.repository);
}
