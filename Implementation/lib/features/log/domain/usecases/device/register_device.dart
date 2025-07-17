import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class RegisterDeviceUseCase
    extends UseCaseWithParams<DeviceRepository<DeviceEntity>, void, DeviceEntity> {
  RegisterDeviceUseCase(super.repository);

  @override
  EResultFuture call(DeviceEntity params) async => repository.registerDevice(params);
}
