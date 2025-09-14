// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_occurrence_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduledOccurrenceHiveModelAdapter
    extends HiveBaseTypeAdapter<ScheduledOccurrenceHiveModel> {
  @override
  final int typeId = 20;

  @override
  ScheduledOccurrenceHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduledOccurrenceHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      taskId: fields[19] as String,
      createdAt: fields[2] as DateTime,
      startDateTime: fields[11] as DateTime,
      endDateTime: fields[12] as DateTime,
      schedulerId: fields[13] as String,
      schedulerType: fields[14] as ScheduleType,
      occurrenceStatus: fields[15] as OccurrenceStatus,
      sequenceNumber: fields[16] as int,
      timeMode: fields[20] as ScheduledTimeMode,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
      successPercentage: fields[17] as int,
      timezone: fields[18] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduledOccurrenceHiveModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(11)
      ..write(obj.startDateTime)
      ..writeByte(12)
      ..write(obj.endDateTime)
      ..writeByte(13)
      ..write(obj.schedulerId)
      ..writeByte(14)
      ..write(obj.schedulerType)
      ..writeByte(15)
      ..write(obj.occurrenceStatus)
      ..writeByte(16)
      ..write(obj.sequenceNumber)
      ..writeByte(17)
      ..write(obj.successPercentage)
      ..writeByte(18)
      ..write(obj.timezone)
      ..writeByte(19)
      ..write(obj.taskId)
      ..writeByte(20)
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
      other is ScheduledOccurrenceHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
