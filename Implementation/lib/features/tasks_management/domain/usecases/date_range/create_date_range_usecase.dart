import 'package:zamaan/domain/entities/date_time_ranges/date_range.dart';
import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateDateRangeUsecase extends CreateUsecase<DateRangeRepository, DateRangeEntity> {
  CreateDateRangeUsecase(super.repository);
}
