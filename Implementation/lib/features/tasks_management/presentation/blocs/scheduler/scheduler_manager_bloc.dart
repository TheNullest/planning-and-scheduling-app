import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_instance/generate_instances.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduled_instance/get_batch_instance_by_scheduler.dart';
import 'package:zamaan/features/tasks_management/domain/usecases/scheduler/create_batch_schedulers_usecase.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_instance_ui.dart';

part 'scheduler_manager_event.dart';
part 'scheduler_manager_state.dart';
part 'scheduler_manager_bloc.freezed.dart';

class SchedulerManagerBloc extends Bloc<SchedulerManagerEvent, SchedulerManagerState> {
  SchedulerManagerBloc() : super(const _Initial()) {
    on<SchedulerManagerEvent>((event, emit) {});
  }

  final GetBatchInstanceBySchedulerUsecase _getBatchInstanceBySchedulerUsecase;
  final GenerateInstancesUsecase _generateInstancesUsecase;
  final CreateBatchSchedulersUsecase _createBatchSchedulersUsecase;
}
