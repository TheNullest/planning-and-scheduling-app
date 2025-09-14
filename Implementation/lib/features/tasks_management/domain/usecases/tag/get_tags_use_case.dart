import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/get_use_case.dart';

class GetTagsUseCase extends FetcBatchAllUseCase<TagRepository, TagEntity> {
  GetTagsUseCase(super.repository);
}
