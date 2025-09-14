import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/get_by_id_use_case.dart';

class GetTagUseCase extends GetByIdUseCase<TagRepository, TagEntity> {
  GetTagUseCase(super.repository);
}
