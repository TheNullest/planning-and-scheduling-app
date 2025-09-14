import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/delete_batch_use_case.dart';

class DeleteBatchDateRangesUseCase extends DeleteBatchUseCase<DateRangeRepository> {
  DeleteBatchDateRangesUseCase(super.repository);
}
