import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class GetDevicesUseCase
    extends UseCaseWithoutParams<DeviceRepository<DeviceEntity>, List<DeviceEntity>> {
  GetDevicesUseCase(super.repository);

  @override
  EResultFuture<List<DeviceEntity>> call() async => repository.getDevices();
}
