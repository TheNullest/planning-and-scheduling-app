import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class DeviceRepoImpl extends DeviceRepository<DeviceEntity> {
  @override
  EResultFuture<List<DeviceEntity>> getDevices(String? userId) {
    // TODO: implement getDevices
    throw UnimplementedError();
  }

  @override
  EResultFutureVoid registerDevices(List<DeviceEntity> devices) {
    // TODO: implement storeBulkDevices
    throw UnimplementedError();
  }

  @override
  EResultFutureVoid unregisterDevice({required String id, String? userId}) {
    // TODO: implement unregisterDevice
    throw UnimplementedError();
  }

  @override
  EResultFutureVoid updateDeviceInfo(DeviceEntity device) {
    // TODO: implement updateDeviceInfo
    throw UnimplementedError();
  }
}
