import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class RegisterDeviceUsecase
    extends UsecaseWithParams<DeviceRepository<DeviceEntity>, void, DeviceEntity> {
  RegisterDeviceUsecase(super.repository);

  @override
  EResultFuture call(DeviceEntity params) async => repository.registerDevice(params);
}
