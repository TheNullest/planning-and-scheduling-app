import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/usecases/get_all_usecase.dart';

class GetDateRangesUsecase extends GetAllUsecase<DateRangeRepository, DateRangeEntity> {
  GetDateRangesUsecase(super.repository);
}
