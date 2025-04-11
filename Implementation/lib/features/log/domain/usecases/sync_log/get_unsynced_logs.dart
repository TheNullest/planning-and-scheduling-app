import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class GetUnsyncedLogsUsecase
    extends UsecaseWithParams<SyncLogRepository<SyncLogEntity>, List<SyncLogEntity>, String> {
  GetUnsyncedLogsUsecase(super.repository);

  @override
  EResultFuture<List<SyncLogEntity>> call(String deviceId) async =>
      repository.getUnsyncedLogs(deviceId);
}
