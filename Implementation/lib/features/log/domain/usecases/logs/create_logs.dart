import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/params/create_logs.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class CreateLogsUseCase extends UseCaseWithParams<LogRepository, void, CreateLogsParams> {
  CreateLogsUseCase(super.repository);

  @override
  EResultFutureVoid call(CreateLogsParams params) async =>
      repository.createLogs(params.logs, policy: params.policy);
}
