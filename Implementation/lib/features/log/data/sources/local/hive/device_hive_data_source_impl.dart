import 'package:zamaan/core/constants/hive_boxes.dart';
import 'package:zamaan/core/services/hive/hive_services.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/log/data/models/local/hive/device.dart';
import 'package:zamaan/features/log/data/sources/base/device_data_source.dart';

class DeviceHiveDataSourceImpl implements DeviceDataSource<DeviceHiveModel> {
  DeviceHiveDataSourceImpl(this._hiveBox);

  /// The Hive service used for local storage operations.
  final HiveServices<DeviceHiveModel> _hiveBox;
  String get _boxName => HiveBoxConstants.devicesBox;

  @override
  EResultFuture<List<DeviceHiveModel>> getDevices() async => tryCatchEither<List<DeviceHiveModel>>(
        action: () async => _hiveBox.operator<List<DeviceHiveModel>>(
          job: (box) async => box.values.toList(),
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid registerDevice(DeviceHiveModel device) async => tryCatchEither(
        action: () async => _hiveBox.operator(
          job: (box) async {
            await box.add(device);
          },
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid unregisterDevice(String id) async => tryCatchEither(
        action: () async => _hiveBox.operator(
          job: (box) async {
            await box.delete(id);
          },
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid updateDeviceInfo(DeviceHiveModel device) async => tryCatchEither(
        action: () async => _hiveBox.operator(
          job: (box) async {
            await box.put(device.id, device);
          },
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );

  @override
  EResultFuture<DeviceHiveModel?> getDeviceById(
    String id,
  ) async =>
      tryCatchEither<DeviceHiveModel?>(
        action: () async => _hiveBox.operator<DeviceHiveModel?>(
          job: (box) async => box.get(id),
          boxName: _boxName,
        ),
        failureType: FailureType.local,
      );
}
