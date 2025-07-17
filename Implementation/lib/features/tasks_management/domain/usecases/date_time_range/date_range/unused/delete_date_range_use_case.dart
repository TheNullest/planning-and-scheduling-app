import 'package:zamaan/domain/repositories/date_range_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteDateRangeUseCase extends DeleteUseCase<DateRangeRepository> {
  DeleteDateRangeUseCase(super.repository);
}
