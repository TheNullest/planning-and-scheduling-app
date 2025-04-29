// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_definition_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleDefinitionHiveModelAdapter
    extends TypeAdapter<ScheduleDefinitionHiveModel> {
  @override
  final int typeId = 17;

  @override
  ScheduleDefinitionHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduleDefinitionHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      taskId: fields[11] as String,
      repetitionType: fields[15] as RepetitionType,
      repeatCount: fields[16] as int,
      scheduledTimeIds: (fields[14] as List).cast<String>(),
      weekDays: (fields[17] as List).cast<WeekDay>(),
      monthDays: (fields[18] as List).cast<int>(),
      enforceScheduleBounds: fields[21] as bool,
      scheduledDayDefinitionIds: (fields[19] as List).cast<String>(),
      scheduledIntervalDefinitionIds: (fields[20] as List).cast<String>(),
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
      startAt: fields[12] as DateTime?,
      endAt: fields[13] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduleDefinitionHiveModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(11)
      ..write(obj.taskId)
      ..writeByte(12)
      ..write(obj.startAt)
      ..writeByte(13)
      ..write(obj.endAt)
      ..writeByte(14)
      ..write(obj.scheduledTimeIds)
      ..writeByte(15)
      ..write(obj.repetitionType)
      ..writeByte(16)
      ..write(obj.repeatCount)
      ..writeByte(17)
      ..write(obj.weekDays)
      ..writeByte(18)
      ..write(obj.monthDays)
      ..writeByte(19)
      ..write(obj.scheduledDayDefinitionIds)
      ..writeByte(20)
      ..write(obj.scheduledIntervalDefinitionIds)
      ..writeByte(21)
      ..write(obj.enforceScheduleBounds)
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
      other is ScheduleDefinitionHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
