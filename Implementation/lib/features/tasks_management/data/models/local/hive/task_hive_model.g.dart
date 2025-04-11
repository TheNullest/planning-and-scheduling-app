// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskHiveModelAdapter extends HiveBaseTypeAdapter<TaskHiveModel> {
  @override
  final int typeId = 1;

  @override
  TaskHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskHiveModel(
      title: fields[11] as String,
      categoryIds: (fields[16] as List).cast<String>(),
      colorCode: fields[12] as String,
      iconCode: fields[13] as String,
      id: fields[0] as String?,
      updatedAt: fields[4] as DateTime?,
      userId: fields[1] as String?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      priority: fields[14] as int,
      archived: fields[19] as bool,
      fixedTagIds: (fields[17] as List?)?.cast<String>(),
      dueDate: fields[15] as DateTime?,
      totalSpentTime: fields[18] as Duration?,
      taskSchedulerId: fields[20] as String?,
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
      ..write(obj.dueDate)
      ..writeByte(16)
      ..write(obj.categoryIds)
      ..writeByte(17)
      ..write(obj.fixedTagIds)
      ..writeByte(18)
      ..write(obj.totalSpentTime)
      ..writeByte(19)
      ..write(obj.archived)
      ..writeByte(20)
      ..write(obj.taskSchedulerId)
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
      other is TaskHiveModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
