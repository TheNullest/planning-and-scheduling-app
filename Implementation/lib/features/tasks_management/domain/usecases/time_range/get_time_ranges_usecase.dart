import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetTimeRangesUsecase extends GetAllUsecase<TimeRangeRepository, TimeRangeEntity> {
  GetTimeRangesUsecase(super.repository);
}
