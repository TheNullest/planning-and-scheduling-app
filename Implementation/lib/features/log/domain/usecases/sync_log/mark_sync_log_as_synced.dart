import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class MarkSyncLogAsSyncedUsecase
    extends UsecaseWithParams<SyncLogRepository<SyncLogEntity>, void, String> {
  MarkSyncLogAsSyncedUsecase(super.repository);

  @override
  EResultFutureVoid call(String syncLogId) async => repository.markSyncLogAsSynced(syncLogId);
}
