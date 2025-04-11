import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class UpdateBatchUsecase<Repo extends BaseRepository<Entity>,
        Entity extends BaseEntityAbstraction>
    extends UsecaseWithDynamicParams<Repo, void, List<Entity>> {
  UpdateBatchUsecase(super.repository);

  @override
  EResultFutureVoid call(UsecaseParams<List<Entity>> params) async => repository
      .updateBatch(params.param!, fromLocal: params.fromLocal, fromRemote: params.fromRemote);
}
