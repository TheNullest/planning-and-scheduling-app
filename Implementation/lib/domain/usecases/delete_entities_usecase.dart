import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/core/utils/typedef.dart';

abstract class DeleteEntitiesUseCase<Repo extends BaseRepositoryAbstraction>
    extends UseCaseWithParams<Repo, void, List<String>> {
  DeleteEntitiesUseCase(super.repository);
  @override
  ResultFutureVoid call(List<String> params) async =>
      repository.deleteAllSelected(params);
}
