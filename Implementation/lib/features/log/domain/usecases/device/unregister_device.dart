import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/params/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class UnregisterDeviceUsecase
    extends UseCaseWithParams<DeviceRepository<DeviceEntity>, void, DeviceParams> {
  UnregisterDeviceUsecase(super.repository);

  @override
  EResultFuture call(DeviceParams params) async =>
      repository.unregisterDevice(id: params.deviceId, userId: params.userId);
}
