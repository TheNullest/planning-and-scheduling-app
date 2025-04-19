import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/params/get_logs.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class GetLogsUsecase extends UsecaseWithParams<LogRepository, void, GetLogsParams> {
  GetLogsUsecase(super.repository);

  @override
  EResultFutureVoid call(GetLogsParams params) async =>
      repository.getLogs(logIds: params.logIds, policy: params.policy);
}
