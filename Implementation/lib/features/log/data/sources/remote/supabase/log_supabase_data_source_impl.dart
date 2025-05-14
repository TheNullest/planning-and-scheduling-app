import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/data/sources/base_data_source.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/log/log.dart';
import 'package:zamaan/features/log/data/sources/base/log_data_source.dart';

class LogSupabaseDataSourceImpl implements LogDataSource<LogSupabaseModel> {
  LogSupabaseDataSourceImpl(this._supabaseClient);

  final SupabaseClient _supabaseClient;
  @override
  EResultFutureVoid createLogs(List<LogSupabaseModel> logs) async {
    try {
      await _supabaseClient.from('logs').insert(logs);
      return const Right(null);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<LogSupabaseModel>> getLogs(List<String>? logIds) async {
    try {
      final supabaseLogs = await _supabaseClient
          .from('logs')
          .select()
          .or(conditionToString(conditions: logIds!, join: ',', fieldName: 'log_id'));
      final result = supabaseLogs.map(LogSupabaseModel.fromJson).toList();
      return Right(result);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<LogSupabaseModel>> getWithDateRange({
    required DateTime fromDate,
    required DateTime toDate,
  }) async {
    try {
      final logs = await _supabaseClient
          .from('logs')
          .select()
          .gte('recorded_at', fromDate.toIso8601String())
          .lte('recorded_at', toDate.toIso8601String());
      return Right(logs.map(LogSupabaseModel.fromJson).toList());
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
