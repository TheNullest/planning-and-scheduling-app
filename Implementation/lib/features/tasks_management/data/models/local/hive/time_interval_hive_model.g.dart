// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_interval_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimeIntervalHiveModelAdapter extends TypeAdapter<TimeIntervalHiveModel> {
  @override
  final int typeId = 8;

  @override
  TimeIntervalHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimeIntervalHiveModel(
      mainTaskId: fields[11] as String,
      subTaskId: fields[12] as String,
      startAt: fields[13] as DateTime,
      id: fields[0] as String?,
      updatedAt: fields[4] as DateTime?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      userId: fields[1] as String?,
      endAt: fields[14] as DateTime?,
      spentTime: fields[15] as Duration?,
    );
  }

  @override
  void write(BinaryWriter writer, TimeIntervalHiveModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(11)
      ..write(obj.mainTaskId)
      ..writeByte(12)
      ..write(obj.subTaskId)
      ..writeByte(13)
      ..write(obj.startAt)
      ..writeByte(14)
      ..write(obj.endAt)
      ..writeByte(15)
      ..write(obj.spentTime)
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
      other is TimeIntervalHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
