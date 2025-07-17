import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

abstract class DeleteBatchUseCase<Repo extends BaseRepository>
    extends UseCaseWithParams<Repo, void, List<String>> {
  DeleteBatchUseCase(super.repository);
  @override
  EResultFutureVoid call(List<String> params) async => repository.deleteBatch(params);
}
