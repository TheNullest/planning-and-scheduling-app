import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/fetch_by_id_use_case.dart';

class FetchDateRangeUseCase extends FetchByIdUseCase<DateRangeRepository, DateRangeEntity> {
  FetchDateRangeUseCase(super.repository);
}
