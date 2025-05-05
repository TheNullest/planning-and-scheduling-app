import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteTimeRangeUsecase extends DeleteUsecase<TimeRangeRepository> {
  DeleteTimeRangeUsecase(super.repository);
}
