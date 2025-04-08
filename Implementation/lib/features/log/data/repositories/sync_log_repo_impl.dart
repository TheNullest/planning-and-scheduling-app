import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class SyncLogRepoImpl extends SyncLogRepository<SyncLogEntity> {
  @override
  EResultFutureVoid createSyncLog(SyncLogEntity entity) {
    // TODO: implement createSyncLog
    throw UnimplementedError();
  }

  @override
  EResultFuture<List<SyncLogEntity>> getUnsyncedLogs(String? userId) {
    // TODO: implement getUnsyncedLogs
    throw UnimplementedError();
  }

  @override
  EResultFutureVoid markDeviceAsSynced(
      {required String deviceId, String? userId,}) {
    // TODO: implement markDeviceAsSynced
    throw UnimplementedError();
  }
}
