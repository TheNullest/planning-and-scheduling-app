import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/core/utils/typedef.dart';
import 'package:zamaan/domain/aggregates/schedulers_aggregate.dart';
import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/features/tasks_management/domain/params/generate_instances.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_instance/create_batch_instances.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_instance/generate_instances.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/create_batch_schedulers_usecase.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/get_batch_schedulers_usecase.dart';
import 'package:zamaan/features/tasks_management/presentation/models/schedulers_aggregate_vm.dart';

part 'schedulers_manager_event.dart';
part 'schedulers_manager_state.dart';
part 'schedulers_manager_bloc.freezed.dart';

class SchedulersManagerBloc extends Bloc<SchedulerManagerEvent, SchedulerManagerState> {
  SchedulersManagerBloc({
    required GetBatchSchedulersUsecase getBatchSchedulers,
    required GenerateInstancesUsecase generateInstances,
    required CreateBatchSchedulersUsecase createBatchSchedulers,
    required CreateBatchInstancesUsecase getBatchInstances,
  })  : _getBatchSchedulersUsecase = getBatchSchedulers,
        _generateInstancesUsecase = generateInstances,
        _createBatchSchedulersUsecase = createBatchSchedulers,
        _createBatchInstancesUsecase = getBatchInstances,
        super(const _Initial()) {
    on<SchedulerManagerEvent>((event, emit) async {
      event.map(
        started: (e) async => _handleStarted,
        fetchScheduledInstancesByDay: (e) => _fetchBatchSchedulers,
        createBatchSchedulers: (e) => _createBatchSchedulers,
        generateAndCreateInstances: (e) => _generateThenCreateInstances,
      );
    });
  }

  final CreateBatchSchedulersUsecase _createBatchSchedulersUsecase;
  final GenerateInstancesUsecase _generateInstancesUsecase;
  final CreateBatchInstancesUsecase _createBatchInstancesUsecase;
  final GetBatchSchedulersUsecase _getBatchSchedulersUsecase;

  FutureVoid _handleStarted(Emitter<SchedulerManagerState> emit) async {
    emit(const SchedulerManagerState.initial());
  }

  FutureVoid _fetchBatchSchedulers(
    _FetchScheduledInstancesByDayEvent event,
    Emitter<SchedulerManagerState> emit,
  ) async {
    final response = await _getBatchSchedulersUsecase();
    response.fold(
      (failure) => emit(_FailedActionState(failure.message)),
      (schedulers) => emit(
        //TODO[FIXME]: should convert from scheduleAggregateEntities to schedulerAggregateVMs
        const SchedulerManagerState.schedulersFetched([]),
      ),
    );
  }

  FutureVoid _createBatchSchedulers(
    _CreateBatchSchedulersEvent event,
    Emitter<SchedulerManagerState> emit,
  ) async {
    final response = await _createBatchSchedulersUsecase(event.params);
    response.fold(
      (failure) => emit(_FailedActionState(failure.message)),
      (success) => emit(
        const SchedulerManagerState.successfulAction(
          'The Schedulers are successFully saved.',
        ),
      ),
    );
  }

  FutureVoid _generateThenCreateInstances(
    _GenerateAndCreateInstances event,
    Emitter<SchedulerManagerState> emit,
  ) async {
    final response = await _generateInstancesUsecase(event.params);

    response.fold(
      (failure) => emit(_FailedActionState(failure.message)),
      (instances) async {
        final response = await _createBatchInstancesUsecase(instances);

        response.fold(
          (failure) => emit(_FailedActionState(failure.message)),
          (success) => emit(
            const SchedulerManagerState.successfulAction(
              'The Instances are successFully generated and persisted.',
            ),
          ),
        );
      },
    );
  }
}
