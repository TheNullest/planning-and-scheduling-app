import 'package:zamaan/domain/enums/hive/task_status.dart';
import 'package:zamaan/features/tasks_management/presentation/models/tag_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/user_ui.dart';

class SubTaskActivityUI<SubTaskUI> extends BaseUIModel {
  SubTaskActivityUI({
    required this.task,
    required this.startAt,
    required this.endAt,
    required this.variableTags,
    required this.status,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.user,
  });

  final SubTaskUI task;
  final DateTime startAt;
  final DateTime? endAt;
  final List<TagUI> variableTags;
  final TaskStatus status;

  @override
  SubTaskActivityUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    SubTaskUI? task,
    DateTime? startAt,
    DateTime? endAt,
    List<TagUI>? variableTags,
    TaskStatus? status,
    UserUI? user,
  }) =>
      SubTaskActivityUI(
        id: id ?? this.id,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        task: task ?? this.task,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        variableTags: variableTags ?? this.variableTags,
        status: status ?? this.status,
        user: user ?? this.user,
      );
}
