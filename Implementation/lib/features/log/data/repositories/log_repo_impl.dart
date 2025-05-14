import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/failure_type_detector.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/datasource_policy.dart';
import 'package:zamaan/features/log/data/models/local/hive/log.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/log/log.dart';
import 'package:zamaan/features/log/data/sources/base/log_data_source.dart';
import 'package:zamaan/features/log/domain/entities/log.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class LogRepoImpl implements LogRepository<LogEntity> {
  LogRepoImpl({
    required LogDataSource<LogSupabaseModel> logSupabaseDataSource,
    required LogDataSource<LogHiveModel> logHiveDataSource,
  })  : _logSupabaseDataSource = logSupabaseDataSource,
        _logHiveDataSource = logHiveDataSource;

  final LogDataSource<LogSupabaseModel> _logSupabaseDataSource;
  final LogDataSource<LogHiveModel> _logHiveDataSource;
  @override
  EResultFutureVoid createLogs(List<LogEntity> logs, {required DataSourcePolicy policy}) async {
    try {
      await _logSupabaseDataSource.createLogs(logs.map(LogSupabaseModel.fromEntity).toList());
      await _logHiveDataSource.createLogs(logs.map(LogHiveModel.fromEntity).toList());
      return const Right(null);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<LogEntity>> getLogs({
    required DataSourcePolicy policy,
    List<String>? logIds,
  }) async {
    try {
      if (DataSourcePolicy.isLocal(policy)) {
        final response = await _logHiveDataSource.getLogs(logIds);
        final hiveModels = foldEitherRight<List<LogHiveModel>>(response);
        final result = hiveModels.map((item) => item.toEntity()).toList();
        return Right(result);
      }
      final response = await _logSupabaseDataSource.getLogs(logIds);
      final supabaseModels = foldEitherRight<List<LogSupabaseModel>>(response);
      final result = supabaseModels.map((item) => item.toEntity()).toList();
      return Right(result);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }

  @override
  EResultFuture<List<LogEntity>> getWithDateRange({
    required DateTime fromDate,
    required DateTime toDate,
    required DataSourcePolicy policy,
  }) async {
    try {
      if (DataSourcePolicy.isLocal(policy)) {
        final response = await _logHiveDataSource.getWithDateRange(
          fromDate: fromDate,
          toDate: toDate,
        );
        final hiveModels = foldEitherRight<List<LogHiveModel>>(response);
        final result = hiveModels.map((item) => item.toEntity()).toList();
        return Right(result);
      }
      final response = await _logSupabaseDataSource.getWithDateRange(
        fromDate: fromDate,
        toDate: toDate,
      );
      final supabaseModels = foldEitherRight<List<LogSupabaseModel>>(response);
      final result = supabaseModels.map((item) => item.toEntity()).toList();
      return Right(result);
    } on Exception catch (e, stackTrace) {
      throw failureTypeDetector(e: e, stackTrace: stackTrace);
    }
  }
}
