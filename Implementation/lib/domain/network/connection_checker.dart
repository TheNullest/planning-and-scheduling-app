abstract interface class ConnectionChecker {
  Future<bool> get isConnected;
  Stream<bool> get connectionStatus;
}
