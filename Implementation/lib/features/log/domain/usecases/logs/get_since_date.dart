import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/params/get_with_data_range.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class GetLogsUseCase extends UseCaseWithParams<LogRepository, void, GetWithDateRangeParams> {
  GetLogsUseCase(super.repository);

  @override
  EResultFutureVoid call(GetWithDateRangeParams params) async => repository.getWithDateRange(
        fromDate: params.fromDate,
        toDate: params.toDate,
        policy: params.policy,
      );
}
