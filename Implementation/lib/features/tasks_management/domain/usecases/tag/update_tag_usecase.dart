import 'package:zamaan/domain/entities/tag.dart';
import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateTagUsecase extends UpdateUsecase<TagEntity, TagRepository> {
  UpdateTagUsecase(super.repository);
}
