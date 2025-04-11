import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateTagUsecase extends CreateUsecase<TagRepository, TagEntity> {
  CreateTagUsecase(super.repository);
}
