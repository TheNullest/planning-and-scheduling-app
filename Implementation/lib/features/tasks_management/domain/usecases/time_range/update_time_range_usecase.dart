import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateTimeRangeUsecase extends UpdateUsecase<TimeRangeEntity, TimeRangeRepository> {
  UpdateTimeRangeUsecase(super.repository);
}
