import 'package:dartz/dartz.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/local/hive/device.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/device/device.dart';
import 'package:zamaan/features/log/data/sources/base/device_data_source.dart';
import 'package:zamaan/features/log/domain/entities/device.dart';
import 'package:zamaan/features/log/domain/repositories/device_repo.dart';

class DeviceRepoImpl implements DeviceRepository<DeviceEntity> {
  DeviceRepoImpl({
    required DeviceDataSource<DeviceSupabaseModel> deviceSupabaseDataSource,
    required DeviceDataSource<DeviceHiveModel> deviceHiveDataSource,
  })  : _deviceSupabaseDataSource = deviceSupabaseDataSource,
        _deviceHiveDataSource = deviceHiveDataSource;

  final DeviceDataSource<DeviceSupabaseModel> _deviceSupabaseDataSource;
  final DeviceDataSource<DeviceHiveModel> _deviceHiveDataSource;

  @override
  EResultFuture<DeviceEntity?> getDeviceById({required String id, bool fromLocal = false}) async =>
      tryCatchEither(
        action: () async {
          if (fromLocal) {
            final response =
                await _deviceHiveDataSource.getDeviceById(id: id, fromLocal: fromLocal);
            final hiveModel = foldEither<DeviceHiveModel?>(response);
            return Right(hiveModel?.toEntity());
          } else {
            final response =
                await _deviceSupabaseDataSource.getDeviceById(id: id, fromLocal: fromLocal);
            final supabaseModel = foldEither<DeviceSupabaseModel?>(response);
            return Right(supabaseModel?.toEntity());
          }
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<DeviceEntity>> getDevices({bool fromLocal = false}) async =>
      tryCatchEither<List<DeviceEntity>>(
        action: () async {
          if (fromLocal) {
            final response = await _deviceHiveDataSource.getDevices(fromLocal: fromLocal);
            final hiveModels = foldEither<List<DeviceHiveModel>>(response);
            final result = hiveModels.map((item) => item.toEntity()).toList();
            return Right(result);
          } else {
            final response = await _deviceSupabaseDataSource.getDevices(fromLocal: fromLocal);
            final supabaseModels = foldEither<List<DeviceSupabaseModel>>(response);
            final result = supabaseModels.map((item) => item.toEntity()).toList();
            return Right(result);
          }
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid registerDevices(List<DeviceEntity> devices) async => tryCatchEither(
        action: () async {
          await _deviceSupabaseDataSource.registerDevices(
            devices.map(DeviceSupabaseModel.fromEntity).toList(),
          );
          await _deviceHiveDataSource.registerDevices(
            devices.map(DeviceHiveModel.fromEntity).toList(),
          );
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid unregisterDevice(String id) async => tryCatchEither(
        action: () async {
          await _deviceSupabaseDataSource.unregisterDevice(id);
          await _deviceHiveDataSource.unregisterDevice(id);
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid updateDeviceInfo(DeviceEntity device) async => tryCatchEither(
        action: () async {
          await _deviceSupabaseDataSource.updateDeviceInfo(
            DeviceSupabaseModel.fromEntity(device),
          );
          await _deviceHiveDataSource.updateDeviceInfo(
            DeviceHiveModel.fromEntity(device),
          );
          return const Right(null);
        },
        failureType: FailureType.local,
      );
}
