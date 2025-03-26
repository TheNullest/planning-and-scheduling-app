import 'package:hive/hive.dart';
import 'package:zamaan/core/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/time_interval_entity.dart';

part 'time_interval_hive_model.g.dart'; // Include for code generation

@HiveType(typeId: 8) // Unique ID for Hive
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class TimeIntervalHiveModel extends TimeIntervalEntity with HiveObjectMixin {
  TimeIntervalHiveModel({
    required super.mainTaskId,
    required super.subTaskId,
    required super.startAt,
    super.id,
    super.updatedAt,
    super.description,
    super.createdAt,
    super.userId,
    super.endAt,
    super.spentTime,
  }) : super();
  factory TimeIntervalHiveModel.fromEntity(TimeIntervalEntity entity) =>
      TimeIntervalHiveModel(
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        mainTaskId: entity.mainTaskId,
        subTaskId: entity.subTaskId,
        startAt: entity.startAt,
        endAt: entity.endAt,
        spentTime: entity.spentTime,
      );

  // For the purpose of testing
  TimeIntervalHiveModel.empty() : super.empty();

  @override
  TimeIntervalHiveModel copyWith({
    String? id,
    int? order,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? mainTaskId,
    String? subTaskId,
    DateTime? startAt,
    DateTime? endAt,
  }) =>
      TimeIntervalHiveModel(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        mainTaskId: mainTaskId ?? this.mainTaskId,
        subTaskId: subTaskId ?? this.subTaskId,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
      );
}
