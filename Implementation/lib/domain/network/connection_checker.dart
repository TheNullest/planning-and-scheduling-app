abstract interface class NetworkConnectivityMonitor {
  Future<bool> get isConnected;
  Stream<bool> get connectionStatus;
}
