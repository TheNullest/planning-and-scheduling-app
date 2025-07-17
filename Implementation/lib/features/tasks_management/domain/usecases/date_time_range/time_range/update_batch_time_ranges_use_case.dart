import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchTimeRangesUseCase
    extends UpdateBatchUseCase<TimeRangeRepository, TimeRangeEntity> {
  UpdateBatchTimeRangesUseCase(super.repository);
}
