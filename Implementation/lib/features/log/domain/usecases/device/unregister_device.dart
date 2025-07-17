import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class UnregisterDeviceUseCase
    extends UseCaseWithParams<DeviceRepository<DeviceEntity>, void, String> {
  UnregisterDeviceUseCase(super.repository);

  @override
  EResultFutureVoid call(String id) async => repository.unregisterDevice(id);
}
