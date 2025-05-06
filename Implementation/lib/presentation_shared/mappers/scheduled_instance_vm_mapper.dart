import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_instance_vm.dart';
import 'package:zamaan/presentation_shared/mappers/view_model_mapper.dart';

class ScheduledInstanceVMMapper extends ViewModelMapper<ScheduledInstanceVM, ScheduledInstanceEntity> {
  @override
  ScheduledInstanceEntity toEntity(ScheduledInstanceVM ui) => ScheduledInstanceEntity(
        id: ui.id ?? '',
        taskId: ui.taskId,
        description: ui.description,
        createdAt: ui.createdAt ?? DateTime.now(),
        updatedAt: ui.updatedAt,
        startDateTime: ui.startDateTime,
        endDateTime: ui.endDateTime,
        schedulerId: ui.schedulerId,
        schedulerType: ui.schedulerType,
        taskStatus: ui.taskStatus,
        sequenceNumber: ui.sequenceNumber,
        successPercentage: ui.successPercentage,
        timezone: ui.timezone,
        userId: ui.userId ?? '',
      );

  @override
  ScheduledInstanceVM toVM(ScheduledInstanceEntity entity, {Map<String, dynamic>? relations}) =>
      ScheduledInstanceVM(
        id: entity.id,
        taskId: entity.taskId,
        description: entity.description,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        startDateTime: entity.startDateTime,
        endDateTime: entity.endDateTime,
        schedulerId: entity.schedulerId,
        schedulerType: entity.schedulerType,
        taskStatus: entity.taskStatus,
        sequenceNumber: entity.sequenceNumber,
        successPercentage: entity.successPercentage,
        timezone: entity.timezone,
        userId: entity.userId,
      );
}
