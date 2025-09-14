import 'package:hive_flutter/hive_flutter.dart';
import 'package:zamaan/core/constants/hive_type_ids.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/scheduled_occurrence.dart';
import 'package:zamaan/domain/enums/enums.dart';

part 'scheduled_occurrence_hive_model.g.dart';

@HiveType(typeId: ClassHiveTypeIds.scheduledOccurrence) // Unique Type ID for Hive
class ScheduledOccurrenceHiveModel extends ScheduledOccurrenceEntity {
  ScheduledOccurrenceHiveModel({
    required super.id,
    required super.userId,
    required super.taskId,
    required super.createdAt,
    required super.startDateTime,
    required super.endDateTime,
    required super.schedulerId,
    required super.schedulerType,
    required super.occurrenceStatus,
    required super.sequenceNumber,
    required super.timeMode,
    super.description, // Reused for exception reason
    super.updatedAt,
    super.successPercentage,
    super.timezone,
  });

  /// Creates a `ScheduledOccurrenceHiveModel` from a `ScheduledOccurrenceEntity`.
  factory ScheduledOccurrenceHiveModel.fromEntity(ScheduledOccurrenceEntity entity) {
    return ScheduledOccurrenceHiveModel(
      id: entity.id,
      userId: entity.userId,
      taskId: entity.taskId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      startDateTime: entity.startDateTime,
      endDateTime: entity.endDateTime,
      schedulerId: entity.schedulerId,
      schedulerType: entity.schedulerType,
      occurrenceStatus: entity.occurrenceStatus,
      timeMode: entity.timeMode,
      sequenceNumber: entity.sequenceNumber,
      description: entity.description, // Updated to use exception reason
    );
  }
}
