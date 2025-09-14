// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskHiveModelAdapter extends HiveBaseTypeAdapter<TaskHiveModel> {
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
      categoryIds: (fields[15] as List).cast<String>(),
      fixedTagIds: (fields[16] as List).cast<String>(),
      totalSpentTime: fields[17] as Duration,
      archived: fields[18] as bool,
      taskStatus: fields[19] as TaskStatus,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, TaskHiveModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(11)
      ..write(obj.title)
      ..writeByte(12)
      ..write(obj.colorCode)
      ..writeByte(13)
      ..write(obj.iconCode)
      ..writeByte(14)
      ..write(obj.priority)
      ..writeByte(15)
      ..write(obj.categoryIds)
      ..writeByte(16)
      ..write(obj.fixedTagIds)
      ..writeByte(17)
      ..write(obj.totalSpentTime)
      ..writeByte(18)
      ..write(obj.archived)
      ..writeByte(19)
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
      other is TaskHiveModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
