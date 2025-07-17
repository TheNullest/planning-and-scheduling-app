import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/entities/schedule_constraints.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/useCases/base_use_case.dart';

class FetchScheduleConstriantsByTaskIdUseCase
    extends UseCaseWithParams<ScheduleConstraintsRepository, ScheduleConstraintsEntity?, String> {
  FetchScheduleConstriantsByTaskIdUseCase(super.repository);

  @override
  EResultFuture<ScheduleConstraintsEntity?> call(String params) async =>
      repository.getByTaskId(params);
}
