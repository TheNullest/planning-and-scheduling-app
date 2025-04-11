import 'package:dartz/dartz.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
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
  EResultFutureVoid createLogs(List<LogEntity> logs) async => tryCatchEither(
        action: () async {
          await _logSupabaseDataSource.createLogs(logs.map(LogSupabaseModel.fromEntity).toList());
          await _logHiveDataSource.createLogs(logs.map(LogHiveModel.fromEntity).toList());
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<LogEntity>> getLogs({
    required bool fromLocal,
    String? userId,
    List<String>? logIds,
  }) async =>
      tryCatchEither<List<LogEntity>>(
        action: () async {
          if (fromLocal) {
            final response = await _logHiveDataSource.getLogs(logIds: logIds, fromLocal: fromLocal);
            final hiveModels = foldEither<List<LogHiveModel>>(response);
            final result = hiveModels.map((item) => item.toEntity()).toList();
            return Right(result);
          }

          final response = await _logSupabaseDataSource.getLogs(
            userId: userId,
            logIds: logIds,
            fromLocal: fromLocal,
          );
          final supabaseModels = foldEither<List<LogSupabaseModel>>(response);
          final result = supabaseModels.map((item) => item.toEntity()).toList();
          return Right(result);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<LogEntity>> getSinceDate({
    required DateTime fromDate,
    String? userId,
  }) async =>
      tryCatchEither<List<LogEntity>>(
        action: () async {
          final response = await _logSupabaseDataSource.getSinceDate(
            fromDate: fromDate,
            userId: userId,
          );
          final supabaseModels = foldEither<List<LogSupabaseModel>>(response);
          final result = supabaseModels.map((item) => item.toEntity()).toList();
          return Right(result);
        },
        failureType: FailureType.local,
      );
}
