// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_activity_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskActivityHiveModelAdapter extends HiveBaseTypeAdapter<TaskActivityHiveModel> {
  @override
  final int typeId = 9;

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
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
      referenceId: fields[11] as String,
      referenceType: fields[12] as ReferenceType,
      activityDuration: fields[13] as DateRangeEntity,
      variableTags: (fields[14] as List).cast<TagEntity>(),
      scheduleDefinitionId: fields[15] as String?,
      taskStatus: fields[16] as TaskStatus,
    );
  }

  @override
  void write(BinaryWriter writer, TaskActivityHiveModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(11)
      ..write(obj.referenceId)
      ..writeByte(12)
      ..write(obj.referenceType)
      ..writeByte(13)
      ..write(obj.activityDuration)
      ..writeByte(14)
      ..write(obj.variableTags)
      ..writeByte(15)
      ..write(obj.scheduleDefinitionId)
      ..writeByte(16)
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
