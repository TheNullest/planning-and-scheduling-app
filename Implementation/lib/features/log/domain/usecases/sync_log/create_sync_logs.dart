import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class CreateSyncLogsUseCase
    extends UseCaseWithParams<SyncLogRepository<SyncLogEntity>, void, List<SyncLogEntity>> {
  CreateSyncLogsUseCase(super.repository);

  @override
  EResultFutureVoid call(List<SyncLogEntity> params) async => repository.createSyncLogs(params);
}
