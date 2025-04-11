class UsecaseParams<T> {
  UsecaseParams({
    this.param,
    this.fromLocal = false,
    this.fromRemote = false,
  });

  final T? param;
  final bool fromLocal;
  final bool fromRemote;
}
