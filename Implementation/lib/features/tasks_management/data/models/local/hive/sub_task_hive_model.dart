import 'package:hive/hive.dart';
import 'package:zamaan/data/hive_type_adapter/hive_base_type_adapter.dart';
import 'package:zamaan/domain/entities/sub_task_entity.dart';

part 'sub_task_hive_model.g.dart'; // Include for code generation

@HiveType(typeId: 6) // Unique ID starts from 6
// Since HiveObjectMixin contains mutable fields,
// we ignore the immutability check for this class.
// ignore: must_be_immutable
class SubTaskHiveModel extends SubTaskEntity with HiveObjectMixin {
  SubTaskHiveModel({
    required super.mainTaskId,
    required super.title,
    super.id,
    super.updatedAt,
    super.description,
    super.createdAt,
    super.userId,
    super.priority,
    super.status,
  }) : super();

  // For the purpose of testing
  SubTaskHiveModel.empty() : super.empty();

  factory SubTaskHiveModel.fromEntity(SubTaskEntity entity) => SubTaskHiveModel(
        id: entity.id,
        updatedAt: entity.updatedAt,
        description: entity.description,
        createdAt: entity.createdAt,
        userId: entity.userId,
        mainTaskId: entity.mainTaskId,
        title: entity.title,
        priority: entity.priority,
        status: entity.status,
      );

  @override
  SubTaskHiveModel copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userId,
    String? description,
    String? mainTaskId,
    String? title,
    int? priority,
    int? status,
  }) =>
      SubTaskHiveModel(
        id: id ?? this.id,
        updatedAt: updatedAt ?? this.updatedAt,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        userId: userId ?? this.userId,
        mainTaskId: mainTaskId ?? this.mainTaskId,
        title: title ?? this.title,
        priority: priority ?? this.priority,
        status: status ?? this.status,
      );
}
