// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_time_interval_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveTimeIntervalModelAdapter
    extends HiveBaseTypeAdapter<HiveTimeIntervalModel> {
  @override
  final int typeId = 8;

  @override
  HiveTimeIntervalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveTimeIntervalModel(
      id: fields[0] as String?,
      order: fields[100] as int,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      creatorId: fields[1] as String?,
      mainTaskId: fields[4] as String,
      subTaskId: fields[5] as String,
      startAt: fields[6] as DateTime,
      endAt: fields[7] as DateTime?,
      spentTime: fields[8] as Duration?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveTimeIntervalModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(4)
      ..write(obj.mainTaskId)
      ..writeByte(5)
      ..write(obj.subTaskId)
      ..writeByte(6)
      ..write(obj.startAt)
      ..writeByte(7)
      ..write(obj.endAt)
      ..writeByte(8)
      ..write(obj.spentTime)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(100)
      ..write(obj.order)
      ..writeByte(1)
      ..write(obj.creatorId)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveTimeIntervalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}