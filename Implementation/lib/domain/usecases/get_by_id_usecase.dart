import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class GetByIdUsecase<Repo extends BaseRepository<Entity>, Entity>
    extends UsecaseWithParams<Repo, Entity?, String> {
  GetByIdUsecase(super.repository);
  @override
  EResultFuture<Entity?> call(String params) async => repository.getById(params);
}
