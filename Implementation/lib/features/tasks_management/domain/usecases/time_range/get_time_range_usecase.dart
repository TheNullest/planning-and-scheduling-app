import 'package:zamaan/domain/entities/date_time_ranges/time_range.dart';
import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetTimeRangeUsecase extends GetByIdUsecase<TimeRangeRepository, TimeRangeEntity> {
  GetTimeRangeUsecase(super.repository);
}
