import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/usecases/update_batch_usecase.dart';

class UpdateBatchDateRangesUsecase
    extends UpdateBatchUsecase<DateRangeRepository, DateRangeEntity> {
  UpdateBatchDateRangesUsecase(super.repository);
}
