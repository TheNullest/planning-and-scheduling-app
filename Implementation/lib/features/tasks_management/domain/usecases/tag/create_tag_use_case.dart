import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateTagUseCase extends CreateUseCase<TagRepository, TagEntity> {
  CreateTagUseCase(super.repository);
}
