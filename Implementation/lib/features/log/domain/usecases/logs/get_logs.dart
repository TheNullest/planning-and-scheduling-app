import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/params/log.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class GetLogsUsecase extends UseCaseWithParams<LogRepository, void, LogParams> {
  GetLogsUsecase(super.repository);

  @override
  EResultFutureVoid call(LogParams params) async => repository.getLogs(
        userId: params.userId,
        logIds: params.logIds,
        fromLocal: params.fromLocal!,
      );
}
