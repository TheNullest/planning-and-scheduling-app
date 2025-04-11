import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class GetDevicesUsecase
    extends UseCaseWithParams<DeviceRepository<DeviceEntity>, List<DeviceEntity>, String> {
  GetDevicesUsecase(super.repository);

  @override
  EResultFuture<List<DeviceEntity>> call(String userId) async => repository.getDevices(userId);
}
