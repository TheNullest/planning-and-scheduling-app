import 'package:zamaan/domain/entities/constraint_date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/create_use_case.dart';

class CreateDateRangeUseCase extends CreateUseCase<DateRangeRepository, DateRangeEntity> {
  CreateDateRangeUseCase(super.repository);
}
