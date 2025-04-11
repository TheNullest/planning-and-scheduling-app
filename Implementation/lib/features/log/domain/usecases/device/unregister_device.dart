import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class UnregisterDeviceUsecase
    extends UsecaseWithParams<DeviceRepository<DeviceEntity>, void, String> {
  UnregisterDeviceUsecase(super.repository);

  @override
  EResultFutureVoid call(String id) async => repository.unregisterDevice(id);
}
