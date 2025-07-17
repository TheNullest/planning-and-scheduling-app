import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class FetchAllTagsUseCase extends FetcBatchAllUseCase<TagRepository, TagEntity> {
  FetchAllTagsUseCase(super.repository);
}
