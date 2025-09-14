import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetSelectedTagsUseCase extends GetBatchByIdsUseCase<TagRepository, TagEntity> {
  GetSelectedTagsUseCase(super.repository);
}
