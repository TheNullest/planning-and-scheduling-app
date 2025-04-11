import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class CreateUsecase<Repo extends BaseRepository<Entity>,
    Entity extends BaseEntityAbstraction> extends UsecaseWithDynamicParams<Repo, void, Entity> {
  CreateUsecase(super.repository);
  @override
  EResultFutureVoid call(UsecaseParams<Entity> params) async =>
      repository.create(params.param!, fromLocal: params.fromLocal, fromRemote: params.fromRemote);
}
