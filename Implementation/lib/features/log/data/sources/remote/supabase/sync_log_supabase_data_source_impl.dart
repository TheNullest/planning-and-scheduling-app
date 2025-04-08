import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/sync_log/sync_log.dart';
import 'package:zamaan/features/log/data/sources/base/sync_log_data_source.dart';

class SyncLogHiveDataSourceImpl extends SyncLogDataSource<SyncLogSupabaseModel> {
  SyncLogHiveDataSourceImpl(this._supabaseClient);

  final SupabaseClient _supabaseClient;
  @override
  EResultFutureVoid createSyncLog(SyncLogSupabaseModel entity) async => tryCatchEither(
        action: () async {
          await _supabaseClient.from('sync_logs').insert(entity);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<SyncLogSupabaseModel>> getUnsyncedLogs(String? userId) async =>
      tryCatchEither<List<SyncLogSupabaseModel>>(
        action: () async {
          final logs = await _supabaseClient
              .from('sync_logs')
              .select()
              .eq('user_id', userId!)
              .eq('is_synced', false);
          return Right(
            logs
                .map(
                  SyncLogSupabaseModel.fromJson,
                )
                .toList(),
          );
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid markDeviceAsSynced({
    required String deviceId,
    String? userId,
  }) async =>
      tryCatchEither(
        action: () async {
          await _supabaseClient
              .from('sync_logs')
              .update({'is_synced': true}).eq('device_id', deviceId);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );
}
