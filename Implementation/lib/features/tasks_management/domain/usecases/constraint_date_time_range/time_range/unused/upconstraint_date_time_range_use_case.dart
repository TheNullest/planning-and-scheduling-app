import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpconstraintDateTimeRangeUseCase extends UpdateUseCase<TimeRangeEntity, TimeRangeRepository> {
  UpconstraintDateTimeRangeUseCase(super.repository);
}
