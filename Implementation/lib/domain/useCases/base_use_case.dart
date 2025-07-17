import 'package:zamaan/core/utils/typedef.dart';

abstract class UseCaseWithParams<Repo, ResultType, Params> {
  UseCaseWithParams(Repo repository) : _repository = repository;
  final Repo _repository;

  Repo get repository => _repository;

  EResultFuture<ResultType> call(Params params);
}

abstract class UseCaseWithParamsAndMultipleRepos<ResultType, Params> {
  EResultFuture<ResultType> call(Params params);
}

abstract class UseCaseWithoutParams<Repo, ResultType> {
  UseCaseWithoutParams(Repo repository) : _repository = repository;
  final Repo _repository;

  Repo get repository => _repository;

  EResultFuture<ResultType> call();
}

abstract class UseCaseWithoutParamsWithMultipleRepos<ResultType> {
  EResultFuture<ResultType> call();
}
