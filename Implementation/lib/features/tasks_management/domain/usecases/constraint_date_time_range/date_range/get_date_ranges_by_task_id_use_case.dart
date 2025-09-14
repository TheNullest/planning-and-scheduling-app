import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class GetBatchDateRangesByTaskIdUseCase
    extends UseCaseWithParams<DateRangeRepository, List<DateRangeEntity>, String> {
  GetBatchDateRangesByTaskIdUseCase(super.repository);

  @override
  EResultFuture<List<DateRangeEntity>> call(String params) async => repository.getByTaskId(params);
}
