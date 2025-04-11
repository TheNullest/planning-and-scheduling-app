import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class GetDevicesUsecase
    extends UsecaseWithParams<DeviceRepository<DeviceEntity>, List<DeviceEntity>, bool> {
  GetDevicesUsecase(super.repository);

  @override
  EResultFuture<List<DeviceEntity>> call(bool fromLocal) async =>
      repository.getDevices(fromLocal: fromLocal);
}
