import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateTimeRangeUsecase extends CreateUsecase<TimeRangeRepository, TimeRangeEntity> {
  CreateTimeRangeUsecase(super.repository);
}
