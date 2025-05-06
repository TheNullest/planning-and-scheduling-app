import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class FlutterSecureStorageWrapper {
  Future<String?> read(String key);
  Future<void> write({required String key, required String value});
}

class FlutterSecureStorageWrapperImpl implements FlutterSecureStorageWrapper {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  @override
  Future<String?> read(String key) => _storage.read(key: key);

  @override
  Future<void> write({required String key, required String value}) =>
      _storage.write(key: key, value: value);
}
