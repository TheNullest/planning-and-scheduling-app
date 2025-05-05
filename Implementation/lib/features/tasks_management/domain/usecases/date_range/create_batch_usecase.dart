import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/usecases/create_batch_usecase.dart';

class CreateBatchDateRangesUsecase extends CreateBatchUsecase<DateRangeRepository, DateRangeEntity> {
  CreateBatchDateRangesUsecase(super.repository);
}
