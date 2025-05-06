// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_instance_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduledInstanceHiveModelAdapter extends HiveBaseTypeAdapter<ScheduledInstanceHiveModel> {
  @override
  final int typeId = 20;

  @override
  ScheduledInstanceHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduledInstanceHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      taskId: fields[19] as String,
      createdAt: fields[2] as DateTime,
      startDateTime: fields[11] as DateTime,
      endDateTime: fields[12] as DateTime,
      schedulerId: fields[13] as String,
      schedulerType: fields[14] as SchedulerType,
      taskStatus: fields[15] as TaskStatus,
      sequenceNumber: fields[16] as int,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
      successPercentage: fields[17] as int,
      timezone: fields[18] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduledInstanceHiveModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(11)
      ..write(obj.startDateTime)
      ..writeByte(12)
      ..write(obj.endDateTime)
      ..writeByte(13)
      ..write(obj.schedulerId)
      ..writeByte(14)
      ..write(obj.schedulerType)
      ..writeByte(15)
      ..write(obj.taskStatus)
      ..writeByte(16)
      ..write(obj.sequenceNumber)
      ..writeByte(17)
      ..write(obj.successPercentage)
      ..writeByte(18)
      ..write(obj.timezone)
      ..writeByte(19)
      ..write(obj.taskId)
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
      other is ScheduledInstanceHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
