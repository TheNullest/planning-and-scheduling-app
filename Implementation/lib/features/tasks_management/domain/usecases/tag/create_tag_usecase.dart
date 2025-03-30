import 'package:zamaan/domain/entities/tag_entity.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/create_entity_usecase.dart';

class CreateTagUsecase extends CreateEntityUseCase<TagRepository, TagEntity> {
  CreateTagUsecase(super.repository);
}
