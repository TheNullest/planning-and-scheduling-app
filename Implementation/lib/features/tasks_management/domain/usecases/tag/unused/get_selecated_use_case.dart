import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class GetSelectedTagsUseCase extends FetchBatchByIdsUseCase<TagRepository, TagEntity> {
  GetSelectedTagsUseCase(super.repository);
}
