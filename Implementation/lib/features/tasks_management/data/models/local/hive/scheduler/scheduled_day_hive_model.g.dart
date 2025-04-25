// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_day_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduledDayHiveModelAdapter extends HiveBaseTypeAdapter<ScheduledDayHiveModel> {
  @override
  final int typeId = 109;

  @override
  ScheduledDayHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduledDayHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
      scheduleDefinitionId: fields[11] as String,
      dayType: fields[12] as DayType,
      dayValue: fields[13] as String,
      scheduledTimes: (fields[14] as List).cast<TimeRangeEntity>(),
      canRepeat: fields[15] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduledDayHiveModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(11)
      ..write(obj.scheduleDefinitionId)
      ..writeByte(12)
      ..write(obj.dayType)
      ..writeByte(13)
      ..write(obj.dayValue)
      ..writeByte(14)
      ..write(obj.scheduledTimes)
      ..writeByte(15)
      ..write(obj.canRepeat)
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
      other is ScheduledDayHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
