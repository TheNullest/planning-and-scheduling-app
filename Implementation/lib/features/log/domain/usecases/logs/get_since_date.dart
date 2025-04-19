import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/params/get_with_data_range.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/log/domain/repositories/log_repo.dart';

class GetLogsUsecase extends UsecaseWithParams<LogRepository, void, GetWithDateRangeParams> {
  GetLogsUsecase(super.repository);

  @override
  EResultFutureVoid call(GetWithDateRangeParams params) async => repository.getWithDateRange(
      fromDate: params.fromDate, toDate: params.toDate, policy: params.policy,);
}
