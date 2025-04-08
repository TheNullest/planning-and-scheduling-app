import 'package:zamaan/core/utils/typedef.dart';

abstract class DeviceRepository<T> {
  /// For registering and storing one or multiple devices in supabase or hive db
  EResultFutureVoid registerDevices(List<T> devices);

  /// Close current session and unregister the device
  /// This should be called when the user logs out or when the app is uninstalled
  EResultFutureVoid unregisterDevice({required String id, String? userId});

  /// Updates the device information in the system
  EResultFutureVoid updateDeviceInfo(T device);

  EResultFuture<List<T>> getDevices(String? userId);
}
