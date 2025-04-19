import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class UpdateUsecase<Entity extends BaseEntityAbstraction,
        Repo extends BaseRepository<Entity>>
    extends UsecaseWithParams<Repo, void, DynamicParam<Entity>> {
  UpdateUsecase(super.repository);

  @override
  EResultFutureVoid call(DynamicParam<Entity> params) async =>
      repository.update(params.param, policy: params.policy);
}
