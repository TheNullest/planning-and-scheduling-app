import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/create_batch_use_case.dart';

class CreateBatchTimeRangesUseCase extends CreateBatchUseCase<TimeRangeRepository, TimeRangeEntity> {
  CreateBatchTimeRangesUseCase(super.repository);
}
