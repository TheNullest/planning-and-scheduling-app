import 'package:zamaan/core/utils/typedef.dart';

abstract class UsecaseWithParams<Repo, ResultType, Params> {
  UsecaseWithParams(Repo repository) : _repository = repository;
  final Repo _repository;

  Repo get repository => _repository;

  EResultFuture<ResultType> call(Params params);
}

abstract class UsecaseWithMultipleRepos<ResultType, Params> {
  EResultFuture<ResultType> call(Params params);
}

abstract class UsecaseWithoutParams<Repo, ResultType> {
  UsecaseWithoutParams(Repo repository) : _repository = repository;
  final Repo _repository;

  Repo get repository => _repository;

  EResultFuture<ResultType> call();
}
