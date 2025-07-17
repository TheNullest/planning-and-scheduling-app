import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/useCases/delete_use_case.dart';

class DeleteScheduledIntervalUseCase extends DeleteUseCase<ScheduledIntervalRepository> {
  DeleteScheduledIntervalUseCase(super.repository);
}
