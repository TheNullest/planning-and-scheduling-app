// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_activity_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskActivityHiveModelAdapter extends HiveBaseTypeAdapter<TaskActivityHiveModel> {
  @override
  final int typeId = 8;

  @override
  TaskActivityHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskActivityHiveModel(
      taskId: fields[11] as String,
      subTaskId: fields[12] as String,
      startAt: fields[13] as DateTime,
      id: fields[0] as String?,
      scheduledTaskId: fields[17] as String?,
      updatedAt: fields[4] as DateTime?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      userId: fields[1] as String?,
      dueDate: fields[14] as DateTime?,
      spentTime: fields[15] as Duration?,
      taskStatus: fields[18] as String?,
      variableTagIds: (fields[16] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, TaskActivityHiveModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(11)
      ..write(obj.taskId)
      ..writeByte(12)
      ..write(obj.subTaskId)
      ..writeByte(13)
      ..write(obj.startAt)
      ..writeByte(14)
      ..write(obj.dueDate)
      ..writeByte(15)
      ..write(obj.spentTime)
      ..writeByte(16)
      ..write(obj.variableTagIds)
      ..writeByte(17)
      ..write(obj.scheduledTaskId)
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
      ..write(obj.updatedAt);
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
