// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_measurement_unit_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveMeasurementUnitModelAdapter
    extends HiveBaseTypeAdapter<HiveMeasurementUnitModel> {
  @override
  final int typeId = 4;

  @override
  HiveMeasurementUnitModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveMeasurementUnitModel(
      id: fields[0] as String?,
      order: fields[100] as int,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      creatorId: fields[1] as String?,
      title: fields[4] as String,
      iconCode: fields[6] as int,
      isDouble: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, HiveMeasurementUnitModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.isDouble)
      ..writeByte(6)
      ..write(obj.iconCode)
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
      other is HiveMeasurementUnitModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}