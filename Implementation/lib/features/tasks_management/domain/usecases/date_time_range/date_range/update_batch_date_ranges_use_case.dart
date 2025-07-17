import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/update_batch_use_case.dart';

class UpdateBatchDateRangesUseCase
    extends UpdateBatchUseCase<DateRangeRepository, DateRangeEntity> {
  UpdateBatchDateRangesUseCase(super.repository);
}
