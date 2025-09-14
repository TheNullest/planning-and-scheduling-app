import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/update_use_case.dart';

class UpdateDateRangeUseCase extends UpdateUseCase<DateRangeEntity, DateRangeRepository> {
  UpdateDateRangeUseCase(super.repository);
}
