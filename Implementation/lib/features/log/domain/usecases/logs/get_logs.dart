import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/params/get_logs.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class GetLogsUseCase extends UseCaseWithParams<LogRepository, void, GetLogsParams> {
  GetLogsUseCase(super.repository);

  @override
  EResultFutureVoid call(GetLogsParams params) async =>
      repository.getLogs(logIds: params.logIds, policy: params.policy);
}
