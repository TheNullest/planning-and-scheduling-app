import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class DeleteEntitiesUseCase<Repo extends BaseRepositoryAbstraction>
    extends UseCaseWithParams<Repo, void, List<String>> {
  DeleteEntitiesUseCase(super.repository);
  @override
  EResultFutureVoid call(List<String> params) async =>
      repository.deleteAllSelected(params);
}
