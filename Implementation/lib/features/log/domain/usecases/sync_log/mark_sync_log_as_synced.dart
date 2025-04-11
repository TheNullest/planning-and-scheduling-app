import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/params/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class MarkSyncLogAsSyncedUsecase
    extends UseCaseWithParams<SyncLogRepository<SyncLogEntity>, void, SyncLogParams> {
  MarkSyncLogAsSyncedUsecase(super.repository);

  @override
  EResultFutureVoid call(SyncLogParams params) async => repository.markSyncLogAsSynced(
        userId: params.userId!,
        deviceId: params.deviceId!,
      );
}
