import 'package:hive/hive.dart';
import 'package:zamaan/models/bases/base_type_adapter_asbtract.dart';
import 'package:zamaan/models/models.dart';

part 'task_doing_time_interval_model.g.dart';

@HiveType(typeId: 3)
class TaskDoingTimeIntervalModel extends BaseModelAbstract {
  @HiveField(1)
  final String creatorId;

  @HiveField(2)
  final String mainTaskId;

  @HiveField(3)
  final String? subTaskId;

  @HiveField(4)
  final DateTime startAt;

  @HiveField(5)
  final DateTime? endAt;

  @HiveField(6)
  final int spentTime;

  TaskDoingTimeIntervalModel({
    required super.id,
    required this.creatorId,
    required this.mainTaskId,
    required this.subTaskId,
    required this.startAt,
    required this.spentTime,
    this.endAt,
  });
}