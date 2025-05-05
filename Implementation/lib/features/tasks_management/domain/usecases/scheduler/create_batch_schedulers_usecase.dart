import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/repositories/scheduled_instance_repository.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/params/create_schedulers.dart';

class CreateBatchSchedulersUsecase extends UsecaseWithMultipleRepos<void, CreateSchedulersParams> {
  CreateBatchSchedulersUsecase({
    required ScheduleConstraintRepository constraintRepository,
    required ScheduledDayRepository dayRepository,
    required ScheduledIntervalRepository intervalRepository,
    required ScheduledInstanceRepository instanceRepository,
  })  : _constraintRepository = constraintRepository,
        _dayRepository = dayRepository,
        _intervalRepository = intervalRepository,
        _instanceRepository = instanceRepository;

  final ScheduleConstraintRepository _constraintRepository;
  final ScheduledDayRepository _dayRepository;
  final ScheduledIntervalRepository _intervalRepository;
  final ScheduledInstanceRepository _instanceRepository;

//TODO: implement rollback method for failure time
  @override
  EResultFutureVoid call(CreateSchedulersParams params) async => tryCatchEither(
        action: () async {
          await _constraintRepository.createBatch(params.scheduleConstraints);
          await _dayRepository.createBatch(params.days);
          await _intervalRepository.createBatch(params.intervals);
          await _instanceRepository.createBatch(params.instances);
          return const Right(null);
        },
      );
}
