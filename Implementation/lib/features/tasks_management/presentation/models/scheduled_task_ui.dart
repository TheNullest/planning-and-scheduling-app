import 'package:zamaan/core/enums/enums.dart';
import 'package:zamaan/features/tasks_management/presentation/models/base_ui.dart';

class ScheduledTaskUI extends BaseUIModel {
  ScheduledTaskUI({
    required super.id,
    required super.description,
    required super.createdAt,
    required super.updatedAt,
    required this.repetitionType,
    required this.timeUnit,
    required this.specificTimes,
    required this.repeats,
    this.willStartAt,
    this.dueDate,
  });

  final DateTime? willStartAt;
  final DateTime? dueDate;
  final RepetitionType repetitionType;
  final TimeUnit timeUnit;
  final List<int> specificTimes;
  final List<DateTime> repeats;

  @override
  ScheduledTaskUI copyWith({
    String? id,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? willStartAt,
    DateTime? dueDate,
    RepetitionType? repetitionType,
    TimeUnit? timeUnit,
    List<int>? specificTimes,
    List<DateTime>? repeats,
  }) {
    return ScheduledTaskUI(
      id: id ?? this.id,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      dueDate: dueDate ?? this.dueDate,
      repetitionType: repetitionType ?? this.repetitionType,
      timeUnit: timeUnit ?? this.timeUnit,
      specificTimes: specificTimes ?? this.specificTimes,
      repeats: repeats ?? this.repeats,
    );
  }
}
