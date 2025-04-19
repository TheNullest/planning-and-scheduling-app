import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/params/dynamic_param.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class GetByIdUsecase<Repo extends BaseRepository<Entity>,
        Entity extends BaseEntityAbstraction>
    extends UsecaseWithParams<Repo, Entity?, DynamicParam<String>> {
  GetByIdUsecase(super.repository);
  @override
  EResultFuture<Entity?> call(DynamicParam<String> params) async =>
      repository.getById(params.param, policy: params.policy);
}
