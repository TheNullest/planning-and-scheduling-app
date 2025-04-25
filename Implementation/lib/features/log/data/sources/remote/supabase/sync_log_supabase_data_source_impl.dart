import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/sync_log/sync_log.dart';
import 'package:zamaan/features/log/data/sources/base/sync_log_data_source.dart';

class SyncLogSupabaseDataSourceImpl implements SyncLogDataSource<SyncLogSupabaseModel> {
  SyncLogSupabaseDataSourceImpl(this._supabaseClient);

  final SupabaseClient _supabaseClient;
  @override
  EResultFutureVoid createSyncLogs(List<SyncLogSupabaseModel> syncLogs) async => tryCatchEither(
        action: () async {
          await _supabaseClient.from('sync_logs').insert(
                syncLogs.map((e) => e.toJson).toList(),
              );
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<SyncLogSupabaseModel>> getUnsyncedLogs(String deviceId) async =>
      tryCatchEither<List<SyncLogSupabaseModel>>(
        action: () async {
          final logs = await _supabaseClient
              .from('sync_logs')
              .select()
              .eq('device_id', deviceId)
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
  EResultFutureVoid markSyncLogAsSynced(String syncLogId) async => tryCatchEither(
        action: () async {
          await _supabaseClient.from('sync_logs').update({'is_synced': true}).eq('id', syncLogId);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );
}
