import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/usecases/delete_batch_usecase.dart';

class DeleteAllSelectedDateRangesUsecase extends DeleteBatchUsecase<DateRangeRepository> {
  DeleteAllSelectedDateRangesUsecase(super.repository);
}
