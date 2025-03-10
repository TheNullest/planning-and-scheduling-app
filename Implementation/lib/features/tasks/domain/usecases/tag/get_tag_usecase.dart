import 'package:zamaan/domain/entities/tag_entity.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/get_entity_usecase.dart';

class GetTagUsecase extends GetEntityUseCase<TagRepository, TagEntity> {
  GetTagUsecase(super.repository);
}
