import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class GetBatchTimeRangesByTaskIdUseCase
    extends UseCaseWithParams<TimeRangeRepository, List<TimeRangeEntity>, String> {
  GetBatchTimeRangesByTaskIdUseCase(super.repository);

  @override
  EResultFuture<List<TimeRangeEntity>> call(String params) async => repository.getByTaskId(params);
}
