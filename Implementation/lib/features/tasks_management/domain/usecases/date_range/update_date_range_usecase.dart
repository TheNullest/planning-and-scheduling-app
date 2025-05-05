import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/usecases/update_usecase.dart';

class UpdateDateRangeUsecase extends UpdateUsecase<DateRangeEntity, DateRangeRepository> {
  UpdateDateRangeUsecase(super.repository);
}
