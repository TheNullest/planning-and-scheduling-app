// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_measurement_unit_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomMeasurementUnitHiveModelAdapter
    extends HiveBaseTypeAdapter<CustomMeasurementUnitHiveModel> {
  @override
  final int typeId = 3;

  @override
  CustomMeasurementUnitHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomMeasurementUnitHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
      title: fields[11] as String,
      isDouble: fields[12] as bool,
      iconCode: fields[13] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CustomMeasurementUnitHiveModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(11)
      ..write(obj.title)
      ..writeByte(12)
      ..write(obj.isDouble)
      ..writeByte(13)
      ..write(obj.iconCode)
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
      other is CustomMeasurementUnitHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
