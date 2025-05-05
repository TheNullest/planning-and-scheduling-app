import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/usecases/create_usecase.dart';

class CreateScheduleConstraintUsecase
    extends CreateUsecase<ScheduleConstraintRepository, ScheduleConstraintEntity> {
  CreateScheduleConstraintUsecase(super.repository);
}
