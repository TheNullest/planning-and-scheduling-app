// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceHiveModelAdapter extends HiveBaseTypeAdapter<DeviceHiveModel> {
  @override
  final int typeId = 32;

  @override
  DeviceHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      os: fields[2] as OS,
      osVersion: fields[3] as String,
      appVersion: fields[4] as String,
      manufacturer: fields[5] as String,
      model: fields[6] as String,
      registeredAt: fields[7] as DateTime,
      lastActive: fields[8] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, DeviceHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.os)
      ..writeByte(3)
      ..write(obj.osVersion)
      ..writeByte(4)
      ..write(obj.appVersion)
      ..writeByte(5)
      ..write(obj.manufacturer)
      ..writeByte(6)
      ..write(obj.model)
      ..writeByte(7)
      ..write(obj.registeredAt)
      ..writeByte(8)
      ..write(obj.lastActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceHiveModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
