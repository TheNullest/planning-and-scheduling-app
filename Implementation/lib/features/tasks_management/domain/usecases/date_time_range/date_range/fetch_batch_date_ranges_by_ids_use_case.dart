import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class FetchBatchDateRangesByIdsUseCase
    extends FetchBatchByIdsUseCase<DateRangeRepository, DateRangeEntity> {
  FetchBatchDateRangesByIdsUseCase(super.repository);
}
