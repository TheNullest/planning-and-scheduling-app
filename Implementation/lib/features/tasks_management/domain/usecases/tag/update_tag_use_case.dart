import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateTagUseCase extends UpdateUseCase<TagEntity, TagRepository> {
  UpdateTagUseCase(super.repository);
}
