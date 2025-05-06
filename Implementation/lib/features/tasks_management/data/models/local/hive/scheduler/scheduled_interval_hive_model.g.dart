// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_interval_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduledIntervalHiveModelAdapter extends HiveBaseTypeAdapter<ScheduledIntervalHiveModel> {
  @override
  final int typeId = 19;

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
      scheduleConstraintId: fields[11] as String,
      intervalUnit: fields[12] as IntervalUnit,
      intervalValue: fields[13] as double,
      repeatCount: fields[14] as int?,
      scheduledTimeIds: (fields[15] as List).cast<String>(),
      enforceScheduleBounds: fields[16] as bool,
      consecutiveOccurrences: fields[18] as int,
      startDate: fields[17] as DateTime,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduledIntervalHiveModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(11)
      ..write(obj.scheduleConstraintId)
      ..writeByte(12)
      ..write(obj.intervalUnit)
      ..writeByte(13)
      ..write(obj.intervalValue)
      ..writeByte(14)
      ..write(obj.repeatCount)
      ..writeByte(15)
      ..write(obj.scheduledTimeIds)
      ..writeByte(16)
      ..write(obj.enforceScheduleBounds)
      ..writeByte(17)
      ..write(obj.startDate)
      ..writeByte(18)
      ..write(obj.consecutiveOccurrences)
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
