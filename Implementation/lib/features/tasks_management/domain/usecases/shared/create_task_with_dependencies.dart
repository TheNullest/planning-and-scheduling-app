import 'package:dartz/dartz.dart';
import 'package:zamaan/core/utils/try_catch.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/enums/failure_type.dart';
import 'package:zamaan/domain/repositories/schedule_constraints_repository.dart';
import 'package:zamaan/domain/repositories/scheduled_day_repository.dart';
import 'package:zamaan/domain/repositories/scheduled_instance_repository.dart';
import 'package:zamaan/domain/repositories/scheduled_interval_repository.dart';
import 'package:zamaan/domain/repositories/sub_task_repository.dart';
import 'package:zamaan/domain/repositories/task_repository.dart';
import 'package:zamaan/domain/usecases/base_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/params/create_task_with_sub_tasks.dart';

class CreateTaskWithDependenciesUsecase
    extends UsecaseWithParams<TaskRepository, void, CreateTaskWithDependenciesParams> {
  CreateTaskWithDependenciesUsecase({
    required TaskRepository taskRepo,
    required SubTaskRepository subTaskRepo,
    required ScheduleConstraintRepository scheduleConstraintRepo,
    required ScheduledDayRepository scheduledDayRepo,
    required ScheduledIntervalRepository scheduledIntervalRepo,
    required ScheduledInstanceRepository scheduledInstanceRepo,
  })  : _subTaskRepo = subTaskRepo,
        _scheduleConstraintRepo = scheduleConstraintRepo,
        _scheduledDayRepo = scheduledDayRepo,
        _scheduledIntervalRepo = scheduledIntervalRepo,
        _scheduledInstanceRepo = scheduledInstanceRepo,
        super(taskRepo);

  final SubTaskRepository _subTaskRepo;
  final ScheduleConstraintRepository _scheduleConstraintRepo;
  final ScheduledDayRepository _scheduledDayRepo;
  final ScheduledIntervalRepository _scheduledIntervalRepo;
  final ScheduledInstanceRepository _scheduledInstanceRepo;

  @override
  EResultFutureVoid call(CreateTaskWithDependenciesParams params) async {
    final rollbackActions = <EResultFutureVoid Function()>[];

    return tryCatchEither(
      action: () async {
        // Create the main task and add it to the rollback actions.
        rollbackActions.add(() async => repository.delete(params.task.id));
        await repository.create(params.task);

        // Create sub-tasks and add them to the rollback actions.
        rollbackActions.add(
          () async => _subTaskRepo.deleteBatch(params.subTasks.map((item) => item.id).toList()),
        );
        await _subTaskRepo.createBatch(params.subTasks);

        // Create scheduled date times and add them to the rollback actions.
        rollbackActions.add(() async => _scheduleConstraintRepo.delete(params.scheduleConstraint.id));
        await _scheduleConstraintRepo.create(params.scheduleConstraint);

        // Create scheduled intervals and add them to the rollback actions.
        rollbackActions.add(
          () async => _scheduledIntervalRepo
              .deleteBatch(params.scheduledIntervals.map((item) => item.id).toList()),
        );
        await _scheduledIntervalRepo.createBatch(params.scheduledIntervals);

        // Create scheduled days and add them to the rollback actions.
        rollbackActions.add(
          () async =>
              _scheduledDayRepo.deleteBatch(params.scheduledDays.map((item) => item.id).toList()),
        );
        await _scheduledDayRepo.createBatch(params.scheduledDays);

        // Create scheduled instances and add them to the rollback actions.
        rollbackActions.add(
          () async => _scheduledInstanceRepo
              .deleteBatch(params.scheduledInstances.map((item) => item.id).toList()),
        );
        await _scheduledInstanceRepo.createBatch(params.scheduledInstances);
        return const Right(null);
      },
      rollbackActions: rollbackActions,
      failureType: FailureType.local,
    );
  }
}
