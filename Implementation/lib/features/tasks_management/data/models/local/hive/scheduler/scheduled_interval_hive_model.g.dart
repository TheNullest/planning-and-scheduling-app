// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_interval_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduledIntervalHiveModelAdapter extends HiveBaseTypeAdapter<ScheduledIntervalHiveModel> {
  @override
  final int typeId = 6;

  @override
  ScheduledIntervalHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduledIntervalHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      scheduleDefinitionId: fields[11] as String,
      intervalUnit: fields[12] as IntervalUnit,
      intervalValue: fields[13] as double,
      repeatCount: fields[14] as int,
      scheduledTimes: (fields[15] as List).cast<TimeRangeEntity>(),
      timeExceptions: (fields[16] as List).cast<TimeRangeEntity>(),
      dateExceptions: (fields[17] as List).cast<DateRangeEntity>(),
      updatedAt: fields[4] as DateTime?,
      description: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduledIntervalHiveModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(11)
      ..write(obj.scheduleDefinitionId)
      ..writeByte(12)
      ..write(obj.intervalUnit)
      ..writeByte(13)
      ..write(obj.intervalValue)
      ..writeByte(14)
      ..write(obj.repeatCount)
      ..writeByte(15)
      ..write(obj.scheduledTimes)
      ..writeByte(16)
      ..write(obj.timeExceptions)
      ..writeByte(17)
      ..write(obj.dateExceptions)
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
      other is ScheduledIntervalHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
