import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/usecases/delete_usecase.dart';

class DeleteScheduledDayUsecase extends DeleteUsecase<ScheduledDayRepository> {
  DeleteScheduledDayUsecase(super.repository);
}
