// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_task_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubTaskHiveModelAdapter extends HiveBaseTypeAdapter<SubTaskHiveModel> {
  @override
  final int typeId = 13;

  @override
  SubTaskHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubTaskHiveModel(
      id: fields[0] as String?,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      taskId: fields[11] as String,
      priority: fields[12] as Priority,
      title: fields[13] as String,
      status: fields[14] as TaskStatus,
      totalSpentTime: fields[15] as Duration?,
      goalId: fields[16] as String?,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, SubTaskHiveModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(11)
      ..write(obj.taskId)
      ..writeByte(12)
      ..write(obj.priority)
      ..writeByte(13)
      ..write(obj.title)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.totalSpentTime)
      ..writeByte(16)
      ..write(obj.goalId)
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
      other is SubTaskHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
