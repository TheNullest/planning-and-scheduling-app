import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/fetch_batch_all_use_case.dart';

class FetchBatchAllDateRangesUseCase
    extends FetcBatchAllUseCase<DateRangeRepository, DateRangeEntity> {
  FetchBatchAllDateRangesUseCase(super.repository);
}
