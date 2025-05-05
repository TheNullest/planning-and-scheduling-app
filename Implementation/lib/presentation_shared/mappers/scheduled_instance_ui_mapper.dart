import 'package:zamaan/domain/entities/scheduled_instance.dart';
import 'package:zamaan/features/tasks_management/presentation/models/scheduled_instance_ui.dart';
import 'package:zamaan/presentation_shared/mappers/base_ui_mapper.dart';

class ScheduledInstanceUIMapper extends BaseUIMapper<ScheduledInstanceUI, ScheduledInstanceEntity> {
  @override
  ScheduledInstanceEntity toEntity(ScheduledInstanceUI ui) => ScheduledInstanceEntity(
        id: ui.id ?? '',
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
  ScheduledInstanceUI toUIModel(ScheduledInstanceEntity entity) =>
      ScheduledInstanceUI.fromEntity(entity: entity);
}
