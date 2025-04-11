import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class RegisterDevicesUsecase
    extends UsecaseWithParams<DeviceRepository<DeviceEntity>, void, List<DeviceEntity>> {
  RegisterDevicesUsecase(super.repository);

  @override
  EResultFuture call(List<DeviceEntity> params) async => repository.registerDevices(params);
}
