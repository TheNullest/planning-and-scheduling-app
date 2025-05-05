// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_range_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimeRangeHiveModelAdapter extends TypeAdapter<TimeRangeHiveModel> {
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
      start: fields[1] as int,
      end: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TimeRangeHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.start)
      ..writeByte(2)
      ..write(obj.end);
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
