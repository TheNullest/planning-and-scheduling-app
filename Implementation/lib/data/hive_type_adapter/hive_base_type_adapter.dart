import 'package:hive/hive.dart';

/// An abstract base class for Hive adapters.
/// It provides a helper method to register the adapter
/// with Hive safely (i.e. only if not already registered).
abstract class HiveBaseTypeAdapter<HiveModel> extends TypeAdapter<HiveModel> {
  /// Registers this adapter with Hive if it hasn’t been registered yet.
  void registerAdapter() {
    if (!Hive.isAdapterRegistered(typeId)) {
      Hive.registerAdapter<HiveModel>(this);
    }
  }
}
