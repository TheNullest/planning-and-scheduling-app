import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/usecases/get_by_ids_usecase.dart';

class GetSelectedDateRangesUsecase extends GetByIdsUsecase<DateRangeRepository, DateRangeEntity> {
  GetSelectedDateRangesUsecase(super.repository);
}
