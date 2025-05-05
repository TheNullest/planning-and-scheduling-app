import 'package:zamaan/domain/entities/task.dart';
import 'package:zamaan/features/tasks_management/presentation/models/task_ui.dart';
import 'package:zamaan/presentation_shared/mappers/base_ui_mapper.dart';

class TaskUIMapper extends BaseUIMapper<TaskUI, TaskEntity> {
  @override
  List<TaskEntity> toEntities(List<TaskUI> uiModels) {
    // TODO: implement toEntities
    throw UnimplementedError();
  }

  @override
  TaskEntity toEntity(TaskUI ui) {
    // TODO: implement toEntity
    throw UnimplementedError();
  }

  @override
  TaskUI toUIModel(TaskEntity entity) {
    // TODO: implement toUIModel
    throw UnimplementedError();
  }

  @override
  List<TaskUI> toUIModels(List<TaskEntity> entities) {
    // TODO: implement toUIModels
    throw UnimplementedError();
  }
}
