// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_activity_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskActivityHiveModelAdapter extends HiveBaseTypeAdapter<TaskActivityHiveModel> {
  @override
  final int typeId = 22;

  @override
  TaskActivityHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskActivityHiveModel(
      id: fields[0] as String?,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      referenceId: fields[11] as String,
      referenceType: fields[12] as ReferenceType,
      startedAt: fields[13] as DateTime,
      variableTagIds: (fields[15] as List).cast<String>(),
      taskStatus: fields[18] as TaskStatus,
      endedAt: fields[14] as DateTime?,
      schedulerId: fields[16] as String?,
      schedulerType: fields[17] as SchedulerType?,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, TaskActivityHiveModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(11)
      ..write(obj.referenceId)
      ..writeByte(12)
      ..write(obj.referenceType)
      ..writeByte(13)
      ..write(obj.startedAt)
      ..writeByte(14)
      ..write(obj.endedAt)
      ..writeByte(15)
      ..write(obj.variableTagIds)
      ..writeByte(16)
      ..write(obj.schedulerId)
      ..writeByte(17)
      ..write(obj.schedulerType)
      ..writeByte(18)
      ..write(obj.taskStatus)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.order);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskActivityHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
