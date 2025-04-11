import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class DeleteBatchUsecase<Repo extends BaseRepository>
    extends UsecaseWithDynamicParams<Repo, void, List<String>> {
  DeleteBatchUsecase(super.repository);
  @override
  EResultFutureVoid call(UsecaseParams<List<String>> params) async => repository
      .deleteBatch(params.param!, fromLocal: params.fromLocal, fromRemote: params.fromRemote);
}
