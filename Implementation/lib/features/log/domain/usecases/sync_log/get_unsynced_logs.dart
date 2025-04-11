import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/sync_log.dart';
import 'package:zamaan/features/log/domain/params/sync_log.dart';
import 'package:zamaan/features/log/domain/repositories/sync_log_repo.dart';

class GetUnsyncedLogsUsecase extends UseCaseWithParams<SyncLogRepository<SyncLogEntity>,
    List<SyncLogEntity>, SyncLogParams> {
  GetUnsyncedLogsUsecase(super.repository);

  @override
  EResultFuture<List<SyncLogEntity>> call(SyncLogParams params) async => repository.getUnsyncedLogs(
        userId: params.userId!,
        deviceId: params.deviceId!,
      );
}
