// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_scheduler_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskSchedulerHiveModelAdapter
    extends HiveBaseTypeAdapter<TaskSchedulerHiveModel> {
  @override
  final int typeId = 5;

  @override
  TaskSchedulerHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskSchedulerHiveModel(
      mainTaskId: fields[5] as String,
      id: fields[0] as String?,
      updatedAt: fields[4] as DateTime?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      userId: fields[1] as String?,
      goalId: fields[6] as String?,
      willStartAt: fields[7] as DateTime?,
      endAt: fields[11] as DateTime?,
      repetitionType: fields[8] as int?,
      timeUnit: fields[9] as int?,
      specificTimes: (fields[10] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, TaskSchedulerHiveModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(5)
      ..write(obj.mainTaskId)
      ..writeByte(6)
      ..write(obj.goalId)
      ..writeByte(7)
      ..write(obj.willStartAt)
      ..writeByte(8)
      ..write(obj.repetitionType)
      ..writeByte(9)
      ..write(obj.timeUnit)
      ..writeByte(10)
      ..write(obj.specificTimes)
      ..writeByte(11)
      ..write(obj.endAt)
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
      other is TaskSchedulerHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
