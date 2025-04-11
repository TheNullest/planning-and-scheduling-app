import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class CreateSyncLogsUsecase
    extends UsecaseWithParams<SyncLogRepository<SyncLogEntity>, void, List<SyncLogEntity>> {
  CreateSyncLogsUsecase(super.repository);

  @override
  EResultFutureVoid call(List<SyncLogEntity> params) async => repository.createSyncLogs(params);
}
