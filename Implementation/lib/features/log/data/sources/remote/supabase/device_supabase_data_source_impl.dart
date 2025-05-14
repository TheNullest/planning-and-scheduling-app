import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/device/device.dart';
import 'package:zamaan/features/log/data/sources/base/device_data_source.dart';

class DeviceSupabaseDataSourceImpl implements DeviceDataSource<DeviceSupabaseModel> {
  DeviceSupabaseDataSourceImpl(this._supabaseClient);
  final SupabaseClient _supabaseClient;
  @override
  EResultFuture<List<DeviceSupabaseModel>> getDevices() async {
    try {
      final devices = await _supabaseClient.from('devices').select();
      return Right(devices.map(DeviceSupabaseModel.fromJson).toList());
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  /// It is just for local hive db
  @override
  EResultFutureVoid registerDevice(DeviceSupabaseModel device) async {
    try {
      await _supabaseClient.from('devices').insert(device);
      return const Right(null);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid unregisterDevice(String id) async {
    try {
      await _supabaseClient.from('devices').delete().eq('id', id);
      return const Right(null);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid updateDeviceInfo(DeviceSupabaseModel device) async {
    try {
      await _supabaseClient
          .from('devices')
          .update(device.toJson())
          .eq('id', device.id)
          .eq('user_id', device.userId);
      return const Right(null);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<DeviceSupabaseModel> getDeviceById(String id) async {
    try {
      final device = await _supabaseClient.from('devices').select().eq('id', id).single();
      return Right(DeviceSupabaseModel.fromJson(device));
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
