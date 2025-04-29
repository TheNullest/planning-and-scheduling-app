import 'package:zamaan/domain/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/models/task_activity_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/base_ui.dart';
import 'package:zamaan/presentation_shared/models/entities/user_ui.dart';

class ScheduleDefinitionUI extends BaseUIModel {
  ScheduleDefinitionUI({
    required this.repetitionType,
    required this.timeUnit,
    required this.specificTimes,
    required this.repeats,
    super.id,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.user,
    this.startAt,
    this.dueDate,
  });

  final DateTime? startAt;
  final DateTime? dueDate;
  final RepetitionType repetitionType;
  final IntervalUnit timeUnit;
  final List<int> specificTimes;
  final List<TaskActivityUI> repeats;

  @override
  ScheduleDefinitionUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? startAtAt,
    DateTime? dueDate,
    UserUI? user,
    RepetitionType? repetitionType,
    IntervalUnit? timeUnit, // hour, weekday, monthday, ...
    List<int>? specificTimes, // based on the timeUnit value, this can set value
    List<TaskActivityUI>? repeats, // generated repeats
  }) {
    return ScheduleDefinitionUI(
      id: id ?? this.id,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      dueDate: dueDate ?? this.dueDate,
      repetitionType: repetitionType ?? this.repetitionType,
      timeUnit: timeUnit ?? this.timeUnit,
      specificTimes: specificTimes ?? this.specificTimes,
      repeats: repeats ?? this.repeats,
      user: user ?? this.user,
    );
  }
}
