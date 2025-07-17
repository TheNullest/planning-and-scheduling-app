import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/fetch_by_id_use_case.dart';

class GetTagUseCase extends FetchByIdUseCase<TagRepository, TagEntity> {
  GetTagUseCase(super.repository);
}
