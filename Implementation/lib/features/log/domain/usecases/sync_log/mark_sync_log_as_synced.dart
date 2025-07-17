import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class MarkSyncLogAsSyncedUseCase
    extends UseCaseWithParams<SyncLogRepository<SyncLogEntity>, void, String> {
  MarkSyncLogAsSyncedUseCase(super.repository);

  @override
  EResultFutureVoid call(String syncLogId) async => repository.markSyncLogAsSynced(syncLogId);
}
