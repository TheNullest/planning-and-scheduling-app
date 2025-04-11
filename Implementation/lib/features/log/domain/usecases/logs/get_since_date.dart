import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class GetLogsUsecase extends UsecaseWithParams<LogRepository, void, DateTime> {
  GetLogsUsecase(super.repository);

  @override
  EResultFutureVoid call(DateTime fromDate) async => repository.getSinceDate(
        fromDate: fromDate,
      );
}
