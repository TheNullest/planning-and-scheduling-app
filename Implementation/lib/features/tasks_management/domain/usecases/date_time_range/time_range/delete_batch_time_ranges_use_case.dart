import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteBatchTimeRangesUseCase extends DeleteBatchUseCase<TimeRangeRepository> {
  DeleteBatchTimeRangesUseCase(super.repository);
}
