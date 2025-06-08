import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetTagUsecase extends GetByIdUsecase<TagRepository, TagEntity> {
  GetTagUsecase(super.repository);
}
