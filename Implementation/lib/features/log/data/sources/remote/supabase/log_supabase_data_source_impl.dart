import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/log/log.dart';
import 'package:zamaan/features/log/data/sources/base/log_data_source.dart';

class SyncLogSupabaseDataSourceImpl extends LogDataSource<LogSupabaseModel> {
  SyncLogSupabaseDataSourceImpl(this._supabaseClient);

  final SupabaseClient _supabaseClient;

  @override
  EResultFutureVoid createBulkLogs(List<LogSupabaseModel> logs) async =>
      tryCatchEither(
        action: () async {
          await _supabaseClient.from('logs').insert(logs);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFutureVoid createLog(LogSupabaseModel log) async => tryCatchEither(
        action: () async {
          await _supabaseClient.from('logs').insert(log);
          return const Right(null);
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<LogSupabaseModel>> getLogs(String? userId) async =>
      tryCatchEither<List<LogSupabaseModel>>(
        action: () async {
          final logs = await _supabaseClient
              .from('logs')
              .select()
              .eq('user_id', userId!);
          return Right(
            logs.map(LogSupabaseModel.fromJson).toList(),
          );
        },
        failureType: FailureType.remote,
      );

  @override
  EResultFuture<List<LogSupabaseModel>> getSinceDate({
    required DateTime fromDate,
    String? userId,
  }) async =>
      tryCatchEither<List<LogSupabaseModel>>(
        action: () async {
          final logs = await _supabaseClient
              .from('logs')
              .select()
              .eq('user_id', userId!)
              .gte('created_at', fromDate.toIso8601String());
          return Right(
            logs.map(LogSupabaseModel.fromJson).toList(),
          );
        },
        failureType: FailureType.remote,
      );
}
