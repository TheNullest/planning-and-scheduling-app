import 'package:zamaan/domain/repositories/time_range_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteTimeRangeUseCase extends DeleteUseCase<TimeRangeRepository> {
  DeleteTimeRangeUseCase(super.repository);
}
