import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/entities/log.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class CreateLogsUsecase extends UseCaseWithParams<LogRepository, void, List<LogEntity>> {
  CreateLogsUsecase(super.repository);

  @override
  EResultFutureVoid call(List<LogEntity> params) async => repository.createLogs(params);
}
