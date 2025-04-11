import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class GetAllUsecase<Repo extends BaseRepository<Entity>,
        Entity extends BaseEntityAbstraction>
    extends UsecaseWithDynamicParams<Repo, List<Entity?>, void> {
  GetAllUsecase(super.repository);
  @override
  EResultFuture<List<Entity?>> call(UsecaseParams<void> params) async =>
      repository.getAll(fromLocal: params.fromLocal, fromRemote: params.fromRemote);
}
