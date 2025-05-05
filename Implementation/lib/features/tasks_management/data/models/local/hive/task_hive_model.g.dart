// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskHiveModelAdapter extends TypeAdapter<TaskHiveModel> {
  @override
  final int typeId = 12;

  @override
  TaskHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      title: fields[11] as String,
      colorCode: fields[12] as int,
      iconCode: fields[13] as int,
      priority: fields[14] as Priority,
      subTaskIds: (fields[15] as List).cast<String>(),
      categoryIds: (fields[16] as List).cast<String>(),
      fixedTagIds: (fields[17] as List).cast<String>(),
      totalSpentTime: fields[18] as Duration,
      archived: fields[19] as bool,
      taskStatus: fields[20] as TaskStatus,
      scheduledDayIds: (fields[22] as List).cast<String>(),
      scheduledIntervalIds: (fields[23] as List).cast<String>(),
      scheduledInstanceIds: (fields[24] as List).cast<String>(),
      scheduleConstraintId: fields[21] as String?,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, TaskHiveModel obj) {
    writer
      ..writeByte(19)
      ..writeByte(11)
      ..write(obj.title)
      ..writeByte(12)
      ..write(obj.colorCode)
      ..writeByte(13)
      ..write(obj.iconCode)
      ..writeByte(14)
      ..write(obj.priority)
      ..writeByte(15)
      ..write(obj.subTaskIds)
      ..writeByte(16)
      ..write(obj.categoryIds)
      ..writeByte(17)
      ..write(obj.fixedTagIds)
      ..writeByte(18)
      ..write(obj.totalSpentTime)
      ..writeByte(19)
      ..write(obj.archived)
      ..writeByte(20)
      ..write(obj.taskStatus)
      ..writeByte(21)
      ..write(obj.scheduleConstraintId)
      ..writeByte(22)
      ..write(obj.scheduledDayIds)
      ..writeByte(23)
      ..write(obj.scheduledIntervalIds)
      ..writeByte(24)
      ..write(obj.scheduledInstanceIds)
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
      other is TaskHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
