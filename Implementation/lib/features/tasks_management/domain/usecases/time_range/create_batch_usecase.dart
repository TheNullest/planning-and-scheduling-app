import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchTimeRangesUsecase extends CreateBatchUsecase<TimeRangeRepository, TimeRangeEntity> {
  CreateBatchTimeRangesUsecase(super.repository);
}
