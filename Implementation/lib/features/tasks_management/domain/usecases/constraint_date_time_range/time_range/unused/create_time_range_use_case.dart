import 'package:zamaan/domain/entities/constraint_date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateTimeRangeUseCase extends CreateUseCase<TimeRangeRepository, TimeRangeEntity> {
  CreateTimeRangeUseCase(super.repository);
}
