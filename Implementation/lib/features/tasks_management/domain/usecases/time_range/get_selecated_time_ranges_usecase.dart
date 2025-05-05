import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedTimeRangesUsecase extends GetByIdsUsecase<TimeRangeRepository, TimeRangeEntity> {
  GetSelectedTimeRangesUsecase(super.repository);
}
