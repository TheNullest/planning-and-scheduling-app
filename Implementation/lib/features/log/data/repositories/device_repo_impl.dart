import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/datasource_policy.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
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
  EResultFuture<DeviceEntity?> getDeviceById({
    required String id,
    required DataSourcePolicy policy,
  }) async =>
      tryCatchEither(
        action: () async {
          if (DataSourcePolicy.isLocal(policy)) {
            final response = await _deviceHiveDataSource.getDeviceById(id);
            final hiveModel = foldEitherRight<DeviceHiveModel?>(response);
            return Right(hiveModel?.toEntity());
          }
          final response = await _deviceSupabaseDataSource.getDeviceById(id);
          final supabaseModel = foldEitherRight<DeviceSupabaseModel?>(response);
          return Right(supabaseModel?.toEntity());
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<DeviceEntity>> getDevices() async => tryCatchEither<List<DeviceEntity>>(
        action: () async {
          final response = await _deviceSupabaseDataSource.getDevices();
          final supabaseModels = foldEitherRight<List<DeviceSupabaseModel>>(response);
          final result = supabaseModels.map((item) => item.toEntity()).toList();
          return Right(result);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid registerDevice(DeviceEntity device) async => tryCatchEither(
        action: () async {
          await _deviceSupabaseDataSource.registerDevice(DeviceSupabaseModel.fromEntity(device));
          await _deviceHiveDataSource.registerDevice(
            DeviceHiveModel.fromEntity(device),
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
