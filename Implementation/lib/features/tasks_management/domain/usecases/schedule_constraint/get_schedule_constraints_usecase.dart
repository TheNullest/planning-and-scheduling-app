import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/usecases/get_by_id_usecase.dart';

class GetScheduleConstraintUsecase
    extends GetByIdUsecase<ScheduleConstraintRepository, ScheduleConstraintEntity> {
  GetScheduleConstraintUsecase(super.repository);
}
