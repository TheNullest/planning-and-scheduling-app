import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/params/create_logs.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class CreateLogsUsecase extends UsecaseWithParams<LogRepository, void, CreateLogsParams> {
  CreateLogsUsecase(super.repository);

  @override
  EResultFutureVoid call(CreateLogsParams params) async =>
      repository.createLogs(params.logs, policy: params.policy);
}
