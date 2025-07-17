import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class FetchBatchAllTimeRangesUseCase
    extends FetcBatchAllUseCase<TimeRangeRepository, TimeRangeEntity> {
  FetchBatchAllTimeRangesUseCase(super.repository);
}
