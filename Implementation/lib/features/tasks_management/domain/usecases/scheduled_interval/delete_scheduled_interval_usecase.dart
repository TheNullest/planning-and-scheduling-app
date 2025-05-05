import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteScheduledIntervalUsecase extends DeleteUsecase<ScheduledIntervalRepository> {
  DeleteScheduledIntervalUsecase(super.repository);
}
