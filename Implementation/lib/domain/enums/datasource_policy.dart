enum DataSourcePolicy {
  both,
  localOnly,
  remoteOnly,
  localFirst,
  remoteFirst;

  static bool isRemote(DataSourcePolicy policy) =>
      policy == DataSourcePolicy.both || policy == DataSourcePolicy.remoteOnly;

  static bool isLocal(DataSourcePolicy policy) =>
      policy == DataSourcePolicy.both || policy == DataSourcePolicy.localOnly;
}
