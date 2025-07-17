import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class GetUnsyncedLogsUseCase
    extends UseCaseWithParams<SyncLogRepository<SyncLogEntity>, List<SyncLogEntity>, String> {
  GetUnsyncedLogsUseCase(super.repository);

  @override
  EResultFuture<List<SyncLogEntity>> call(String deviceId) async =>
      repository.getUnsyncedLogs(deviceId);
}
