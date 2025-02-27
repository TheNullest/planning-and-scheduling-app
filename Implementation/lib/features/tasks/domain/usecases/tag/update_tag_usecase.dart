import 'package:zamaan/domain/usecases/update_entity_usecase.dart';
import 'package:zamaan/domain/entities/tag_entity.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';

class UpdateTagUsecase extends UpdateEntityUseCase<TagEntity, TagRepository> {
  UpdateTagUsecase(super.repository);
}
