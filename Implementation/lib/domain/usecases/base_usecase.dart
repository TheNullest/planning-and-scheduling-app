import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/params/dynamic_params.dart';

abstract class UsecaseWithParams<Repo, ResultType, Params> {
  UsecaseWithParams(Repo repository) : _repository = repository;
  final Repo _repository;

  Repo get repository => _repository;

  EResultFuture<ResultType> call(Params params);
}

abstract class UsecaseWithDynamicParams<Repo, ResultType, Param>
    extends UsecaseWithParams<Repo, ResultType, UsecaseParams<Param>> {
  UsecaseWithDynamicParams(super.repository);

  @override
  EResultFuture<ResultType> call(UsecaseParams<Param> params);
}

abstract class UsecaseWithoutParams<Repo, ResultType> {
  UsecaseWithoutParams(Repo repository) : _repository = repository;
  final Repo _repository;

  Repo get repository => _repository;

  EResultFuture<ResultType> call();
}
