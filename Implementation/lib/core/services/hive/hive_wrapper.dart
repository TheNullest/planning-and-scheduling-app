import 'package:hive_flutter/hive_flutter.dart';

abstract class HiveWrapper {
  bool isAdapterRegistered(int typeId);
  void registerAdapter(TypeAdapter adapter);

  Future<void> initFlutter(String path);
  bool isBoxOpen(String boxName);
  Future<Box<T>> openBox<T>(
    String boxName, {
    required HiveAesCipher encryptionCipher,
  });
  Box<T> box<T>(String boxName);
  Future<void> closeAllBoxes();
}

class HiveWarapperImpl implements HiveWrapper {
  @override
  Box<T> box<T>(String boxName) => Hive.box<T>(boxName);

  @override
  Future<void> closeAllBoxes() async => Hive.close();

  @override
  bool isBoxOpen(String boxName) => Hive.isBoxOpen(boxName);

  @override
  Future<Box<T>> openBox<T>(
    String boxName, {
    required HiveAesCipher encryptionCipher,
  }) async =>
      Hive.openBox<T>(boxName, encryptionCipher: encryptionCipher);

  @override
  Future<void> initFlutter(String path) async => Hive.initFlutter(path);

  @override
  bool isAdapterRegistered(int typeId) => Hive.isAdapterRegistered(typeId);

  @override
  void registerAdapter(TypeAdapter adapter) => Hive.registerAdapter(adapter);
}
