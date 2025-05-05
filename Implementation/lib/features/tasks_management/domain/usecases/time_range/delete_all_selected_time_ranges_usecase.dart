import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedTimeRangesUsecase extends DeleteBatchUsecase<TimeRangeRepository> {
  DeleteAllSelectedTimeRangesUsecase(super.repository);
}
