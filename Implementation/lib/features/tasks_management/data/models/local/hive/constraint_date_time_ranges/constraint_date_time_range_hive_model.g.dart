// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constraint_date_time_range_hive_model.dart';

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
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      parentId: fields[13] as String,
      startDate: fields[11] as DateTime?,
      endDate: fields[12] as DateTime?,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, DateRangeHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(11)
      ..write(obj.startDate)
      ..writeByte(12)
      ..write(obj.endDate)
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
      other is DateRangeHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
