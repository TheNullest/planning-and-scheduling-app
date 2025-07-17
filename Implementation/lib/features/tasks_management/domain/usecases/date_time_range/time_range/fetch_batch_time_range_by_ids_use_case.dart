import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_by_ids_use_case.dart';

class FetchBatchTimeRangesByIdsUseCase
    extends FetchBatchByIdsUseCase<TimeRangeRepository, TimeRangeEntity> {
  FetchBatchTimeRangesByIdsUseCase(super.repository);
}
