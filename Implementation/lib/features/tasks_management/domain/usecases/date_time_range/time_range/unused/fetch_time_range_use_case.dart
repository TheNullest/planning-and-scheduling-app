import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/fetch_by_id_use_case.dart';

class FetchTimeRangeUseCase extends FetchByIdUseCase<TimeRangeRepository, TimeRangeEntity> {
  FetchTimeRangeUseCase(super.repository);
}
