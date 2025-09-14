import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/get_use_case.dart';

class GetBatchAllTimeRangesUseCase
    extends FetcBatchAllUseCase<TimeRangeRepository, TimeRangeEntity> {
  GetBatchAllTimeRangesUseCase(super.repository);
}
