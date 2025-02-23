import 'package:zamaan/core/usecases/update_entity_usecase.dart';
import 'package:zamaan/features/tag/domain/entities/tag_entity.dart';
import 'package:zamaan/features/tag/domain/repositories/tag_repository.dart';

class UpdateTagUsecase extends UpdateEntityUseCase<TagEntity, TagRepository> {
  UpdateTagUsecase(super.repository);
}
