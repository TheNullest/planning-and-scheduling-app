import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

abstract class DeleteUseCase<Repo extends BaseRepository>
    extends UseCaseWithParams<Repo, void, String> {
  DeleteUseCase(super.repository);
  @override
  EResultFutureVoid call(String params) async => repository.delete(params);
}
