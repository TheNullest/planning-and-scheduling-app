import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/device/device.dart';
import 'package:zamaan/features/log/data/sources/base/device_data_source.dart';

class DeviceHiveDataSourceImpl extends DeviceDataSource<DeviceSupabaseModel> {
  DeviceHiveDataSourceImpl(this._supabaseClient);
  final SupabaseClient _supabaseClient;

  @override
  EResultFuture<List<DeviceSupabaseModel>> getDevices(String? userId) async =>
      tryCatchEither<List<DeviceSupabaseModel>>(
        action: () async {
          final devices = await _supabaseClient
              .from('devices')
              .select()
              .eq('user_id', userId!);
          return Right(devices.map(DeviceSupabaseModel.fromJson).toList());
        },
        failureType: FailureType.remote,
      );

  /// It is just for local hive db
  @override
  EResultFutureVoid registerDevices(List<DeviceSupabaseModel> devices) async =>
      tryCatchEither(
        action: () async {
          await _supabaseClient
              .from('devices')
              .insert(devices.map((e) => e.toJson()).toList());
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid unregisterDevice({
    required String id,
    String? userId,
  }) async =>
      tryCatchEither(
        action: () async {
          await _supabaseClient
              .from('devices')
              .delete()
              .eq('id', id)
              .eq('user_id', userId!);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid updateDeviceInfo(DeviceSupabaseModel device) async =>
      tryCatchEither(
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
}
