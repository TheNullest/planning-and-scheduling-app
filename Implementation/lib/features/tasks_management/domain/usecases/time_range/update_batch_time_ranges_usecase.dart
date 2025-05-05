import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchTimeRangesUsecase
    extends UpdateBatchUsecase<TimeRangeRepository, TimeRangeEntity> {
  UpdateBatchTimeRangesUsecase(super.repository);
}
