import 'package:zamaan/domain/repositories/tag_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteTagUseCase extends DeleteUseCase<TagRepository> {
  DeleteTagUseCase(super.repository);
}
