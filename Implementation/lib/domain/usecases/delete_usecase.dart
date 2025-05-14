import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/bases/base_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';

abstract class DeleteUsecase<Repo extends BaseRepository>
    extends UsecaseWithParams<Repo, void, String> {
  DeleteUsecase(super.repository);
  @override
  EResultFutureVoid call(String params) async => repository.delete(params);
}
