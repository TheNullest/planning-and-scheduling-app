import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/device/device.dart';
import 'package:zamaan/features/log/data/sources/base/device_data_source.dart';

class DeviceSupabaseDataSourceImpl implements DeviceDataSource<DeviceSupabaseModel> {
  DeviceSupabaseDataSourceImpl(this._supabaseClient);
  final SupabaseClient _supabaseClient;

  @override
  EResultFuture<List<DeviceSupabaseModel>> getDevices() async =>
      tryCatchEither<List<DeviceSupabaseModel>>(
        action: () async {
          final devices = await _supabaseClient.from('devices').select();
          return Right(devices.map(DeviceSupabaseModel.fromJson).toList());
        },
        failureType: FailureType.remote,
      );

  /// It is just for local hive db
  @override
  EResultFutureVoid registerDevice(DeviceSupabaseModel device) async => tryCatchEither(
        action: () async {
          await _supabaseClient.from('devices').insert(device);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid unregisterDevice(String id) async => tryCatchEither(
        action: () async {
          await _supabaseClient.from('devices').delete().eq('id', id);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid updateDeviceInfo(DeviceSupabaseModel device) async => tryCatchEither(
        action: () async {
          await _supabaseClient
              .from('devices')
              .update(device.toJson())
              .eq('id', device.id)
              .eq('user_id', device.userId);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<DeviceSupabaseModel> getDeviceById(String id) async =>
      tryCatchEither<DeviceSupabaseModel>(
        action: () async {
          final device = await _supabaseClient.from('devices').select().eq('id', id).single();
          return Right(DeviceSupabaseModel.fromJson(device));
        },
        failureType: FailureType.remote,
      );
}
