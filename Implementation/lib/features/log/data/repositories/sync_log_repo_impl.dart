import 'package:dartz/dartz.dart';
import 'package:zamaan/core/enums/failure_type.dart';
import 'package:zamaan/core/utils/fold_either.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/data/models/remote/supabase/sync_log/sync_log.dart';
import 'package:zamaan/features/log/data/sources/base/sync_log_data_source.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class SyncLogRepoImpl implements SyncLogRepository<SyncLogEntity> {
  SyncLogRepoImpl(this._syncLogSupabaseDataSource);

  final SyncLogDataSource<SyncLogSupabaseModel> _syncLogSupabaseDataSource;

  @override
  EResultFutureVoid createSyncLogs(List<SyncLogEntity> syncLogs) async => tryCatchEither(
        action: () async {
          await _syncLogSupabaseDataSource
              .createSyncLogs(syncLogs.map(SyncLogSupabaseModel.fromEntity).toList());
          return const Right(null);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFuture<List<SyncLogEntity>> getUnsyncedLogs(String deviceId) async => tryCatchEither(
        action: () async {
          final response = await _syncLogSupabaseDataSource.getUnsyncedLogs(
            deviceId,
          );
          final fold = foldEither<List<SyncLogSupabaseModel>>(response);
          final result = fold.map((item) => item.toEntity()).toList();
          return Right(result);
        },
        failureType: FailureType.local,
      );

  @override
  EResultFutureVoid markSyncLogAsSynced(
    String syncLogId,
  ) async =>
      tryCatchEither(
        action: () async {
          await _syncLogSupabaseDataSource.markSyncLogAsSynced(syncLogId);
          return const Right(null);
        },
        failureType: FailureType.local,
      );
}
