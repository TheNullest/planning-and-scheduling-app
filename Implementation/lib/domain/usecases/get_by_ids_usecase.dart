import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class GetByIdsUsecase<Repo extends BaseRepository<Entity>,
        Entity extends BaseEntityAbstraction>
    extends UsecaseWithParams<Repo, List<Entity?>, DynamicParam<List<String>>> {
  GetByIdsUsecase(super.repository);
  @override
  EResultFuture<List<Entity?>> call(DynamicParam<List<String>> params) async =>
      repository.getByIds(params.param, policy: params.policy);
}
