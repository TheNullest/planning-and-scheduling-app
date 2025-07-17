import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateTimeRangeUseCase extends UpdateUseCase<TimeRangeEntity, TimeRangeRepository> {
  UpdateTimeRangeUseCase(super.repository);
}
