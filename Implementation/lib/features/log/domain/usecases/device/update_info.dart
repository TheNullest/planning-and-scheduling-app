import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class UpdateDeviceInfoUseCase
    extends UseCaseWithParams<DeviceRepository<DeviceEntity>, void, DeviceEntity> {
  UpdateDeviceInfoUseCase(super.repository);

  @override
  EResultFuture call(DeviceEntity param) async => repository.updateDeviceInfo(param);
}
