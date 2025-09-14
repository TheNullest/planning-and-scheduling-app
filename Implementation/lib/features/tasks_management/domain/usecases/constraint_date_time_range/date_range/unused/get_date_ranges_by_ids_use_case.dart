import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/get_by_ids_use_case.dart';

class GetBatchDateRangesByIdsUseCase
    extends GetBatchByIdsUseCase<DateRangeRepository, DateRangeEntity> {
  GetBatchDateRangesByIdsUseCase(super.repository);
}
