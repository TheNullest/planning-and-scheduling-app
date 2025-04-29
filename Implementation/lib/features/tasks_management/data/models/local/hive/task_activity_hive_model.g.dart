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
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      referenceId: fields[11] as String,
      referenceType: fields[12] as ReferenceType,
      dateTimeRangeId: fields[13] as String,
      variableTagIds: (fields[14] as List).cast<String>(),
      taskStatus: fields[17] as TaskStatus,
      schedulerId: fields[15] as String?,
      schedulerType: fields[16] as SchedulerType?,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, TaskActivityHiveModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(11)
      ..write(obj.referenceId)
      ..writeByte(12)
      ..write(obj.referenceType)
      ..writeByte(13)
      ..write(obj.dateTimeRangeId)
      ..writeByte(14)
      ..write(obj.variableTagIds)
      ..writeByte(15)
      ..write(obj.schedulerId)
      ..writeByte(16)
      ..write(obj.schedulerType)
      ..writeByte(17)
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
