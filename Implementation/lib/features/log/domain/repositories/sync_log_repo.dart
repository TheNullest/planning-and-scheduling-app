import 'package:zamaan/core/utils/typedef.dart';

abstract class SyncLogRepository<T> {
  EResultFuture<List<T>> getUnsyncedLogs(String? userId);
  EResultFutureVoid markDeviceAsSynced({
    required String deviceId,
    String? userId,
  });
  EResultFutureVoid createSyncLog(T entity);
}
