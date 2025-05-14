import 'package:zamaan/core/services/hive/hive_box_runner.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/local/hive/device.dart';
import 'package:zamaan/features/log/data/sources/base/device_data_source.dart';

class DeviceHiveDataSourceImpl implements DeviceDataSource<DeviceHiveModel> {
  DeviceHiveDataSourceImpl(this._hiveBox);

  /// The Hive service used for local storage operations.
  final HiveBoxRunner<DeviceHiveModel> _hiveBox;
  @override
  EResultFuture<List<DeviceHiveModel>> getDevices() async {
    try {
      return await _hiveBox.runBoxOperation<List<DeviceHiveModel>>(
        job: (box) async => box.values.toList(),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid registerDevice(DeviceHiveModel device) async {
    try {
      return await _hiveBox.runBoxOperation(
        job: (box) async {
          await box.add(device);
        },
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid unregisterDevice(String id) async {
    try {
      return await _hiveBox.runBoxOperation(
        job: (box) async {
          await box.delete(id);
        },
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid updateDeviceInfo(DeviceHiveModel device) async {
    try {
      return await _hiveBox.runBoxOperation(
        job: (box) async {
          await box.put(device.id, device);
        },
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<DeviceHiveModel?> getDeviceById(String id) async {
    try {
      return await _hiveBox.runBoxOperation<DeviceHiveModel?>(
        job: (box) async => box.get(id),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
