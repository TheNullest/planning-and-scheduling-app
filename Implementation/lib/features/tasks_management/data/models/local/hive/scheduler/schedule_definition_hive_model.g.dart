// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_definition_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleDefinitionHiveModelAdapter extends HiveBaseTypeAdapter<ScheduleDefinitionHiveModel> {
  @override
  final int typeId = 5;

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
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
      taskId: fields[11] as String,
      repetitionType: fields[13] as RepetitionType,
      repeatCount: fields[15] as int,
      scheduledTimes: (fields[14] as List).cast<TimeRangeEntity>(),
      weekDays: (fields[16] as List).cast<WeekDay>(),
      monthDays: (fields[17] as List).cast<int>(),
      scheduledDays: (fields[18] as List).cast<ScheduledDayEntity>(),
      scheduledIntervals: (fields[19] as List).cast<ScheduledIntervalEntity>(),
      scheduledDateRange: fields[12] as DateRangeEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduleDefinitionHiveModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(11)
      ..write(obj.taskId)
      ..writeByte(12)
      ..write(obj.scheduledDateRange)
      ..writeByte(14)
      ..write(obj.scheduledTimes)
      ..writeByte(13)
      ..write(obj.repetitionType)
      ..writeByte(15)
      ..write(obj.repeatCount)
      ..writeByte(16)
      ..write(obj.weekDays)
      ..writeByte(17)
      ..write(obj.monthDays)
      ..writeByte(18)
      ..write(obj.scheduledDays)
      ..writeByte(19)
      ..write(obj.scheduledIntervals)
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
