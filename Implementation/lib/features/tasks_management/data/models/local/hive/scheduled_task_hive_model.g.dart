// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_task_hive_model.dart';

// **************************************************************************
// HiveBaseTypeAdapterGenerator
// **************************************************************************

class ScheduledTaskHiveModelAdapter
    extends HiveBaseTypeAdapter<ScheduledTaskHiveModel> {
  @override
  final int typeId = 5;

  @override
  ScheduledTaskHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduledTaskHiveModel(
      taskId: fields[11] as String,
      id: fields[0] as String?,
      updatedAt: fields[4] as DateTime?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      userId: fields[1] as String?,
      goalId: fields[12] as String?,
      willStartAt: fields[13] as DateTime?,
      dueDate: fields[17] as DateTime?,
      repetitionType: fields[14] as String?,
      timeUnit: fields[15] as String?,
      specificTimes: (fields[16] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, ScheduledTaskHiveModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(11)
      ..write(obj.taskId)
      ..writeByte(12)
      ..write(obj.goalId)
      ..writeByte(13)
      ..write(obj.willStartAt)
      ..writeByte(14)
      ..write(obj.repetitionType)
      ..writeByte(15)
      ..write(obj.timeUnit)
      ..writeByte(16)
      ..write(obj.specificTimes)
      ..writeByte(17)
      ..write(obj.dueDate)
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
      other is ScheduledTaskHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
