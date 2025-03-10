import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository_abstraction.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class DeleteEntityUseCase<Repo extends BaseRepositoryAbstraction>
    extends UseCaseWithParams<Repo, void, String> {
  DeleteEntityUseCase(super.repository);
  @override
  ResultFutureVoid call(String params) async =>
      repository.deleteEntity(id: params);
}
