// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_day_time_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduledDayTimeHiveModelAdapter extends HiveBaseTypeAdapter<ScheduledDayTimeHiveModel> {
  @override
  final int typeId = 18;

  @override
  ScheduledDayTimeHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduledDayTimeHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      taskId: fields[11] as String,
      dayType: fields[12] as DayType,
      dayLabel: fields[13] as String,
      timeMode: fields[17] as ScheduledTimeMode,
      repeatCount: fields[16] as int,
      startTime: fields[14] as int,
      endTime: fields[15] as int,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduledDayTimeHiveModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(11)
      ..write(obj.taskId)
      ..writeByte(12)
      ..write(obj.dayType)
      ..writeByte(13)
      ..write(obj.dayLabel)
      ..writeByte(14)
      ..write(obj.startTime)
      ..writeByte(15)
      ..write(obj.endTime)
      ..writeByte(16)
      ..write(obj.repeatCount)
      ..writeByte(17)
      ..write(obj.timeMode)
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
      other is ScheduledDayTimeHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
