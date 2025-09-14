// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_range_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimeRangeHiveModelAdapter extends HiveBaseTypeAdapter<TimeRangeHiveModel> {
  @override
  final int typeId = 24;

  @override
  TimeRangeHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimeRangeHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      parentId: fields[13] as String,
      end: fields[12] as int?,
      start: fields[11] as int?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, TimeRangeHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(11)
      ..write(obj.start)
      ..writeByte(12)
      ..write(obj.end)
      ..writeByte(13)
      ..write(obj.parentId)
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
      other is TimeRangeHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
