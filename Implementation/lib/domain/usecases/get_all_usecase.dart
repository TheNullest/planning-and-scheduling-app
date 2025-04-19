import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/base/base_entity_abstraction.dart';
import 'package:zamaan/domain/params/usecase_param.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class GetAllUsecase<Repo extends BaseRepository<Entity>,
        Entity extends BaseEntityAbstraction>
    extends UsecaseWithParams<Repo, List<Entity?>, UsecaseParam> {
  GetAllUsecase(super.repository);
  @override
  EResultFuture<List<Entity?>> call(UsecaseParam params) async =>
      repository.getAll(policy: params.policy);
}
