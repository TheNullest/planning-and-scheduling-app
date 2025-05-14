import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/sync_log/sync_log.dart';
import 'package:zamaan/features/log/data/sources/base/sync_log_data_source.dart';

class SyncLogSupabaseDataSourceImpl implements SyncLogDataSource<SyncLogSupabaseModel> {
  SyncLogSupabaseDataSourceImpl(this._supabaseClient);

  final SupabaseClient _supabaseClient;
  @override
  EResultFutureVoid createSyncLogs(List<SyncLogSupabaseModel> syncLogs) async {
    try {
      await _supabaseClient.from('sync_logs').insert(
            syncLogs.map((e) => e.toJson).toList(),
          );
      return const Right(null);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<SyncLogSupabaseModel>> getUnsyncedLogs(String deviceId) async {
    try {
      final logs = await _supabaseClient
          .from('sync_logs')
          .select()
          .eq('device_id', deviceId)
          .eq('is_synced', false);
      return Right(
        logs.map(SyncLogSupabaseModel.fromJson).toList(),
      );
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFutureVoid markSyncLogAsSynced(String syncLogId) async {
    try {
      await _supabaseClient.from('sync_logs').update({'is_synced': true}).eq('id', syncLogId);
      return const Right(null);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
