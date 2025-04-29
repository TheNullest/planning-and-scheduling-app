// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_time_range_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DateRangeHiveModelAdapter extends HiveBaseTypeAdapter<DateRangeHiveModel> {
  @override
  final int typeId = 23;

  @override
  DateRangeHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DateRangeHiveModel(
      id: fields[0] as String,
      start: fields[1] as DateTime?,
      end: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, DateRangeHiveModel obj) {
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
      other is DateRangeHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
