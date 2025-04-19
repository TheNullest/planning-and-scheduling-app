import 'package:zamaan/core/utils/typedef.dart';

abstract class DeviceDataSource<T> {
  EResultFuture<T?> getDeviceById(String id);

  EResultFuture<List<T>> getDevices();

  EResultFutureVoid registerDevice(T device);

  EResultFutureVoid unregisterDevice(String id);

  EResultFutureVoid updateDeviceInfo(T device);
}
