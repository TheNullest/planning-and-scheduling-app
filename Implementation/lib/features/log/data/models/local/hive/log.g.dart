// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// HiveBaseTypeAdapterGenerator
// **************************************************************************

class LogHiveModelAdapter extends HiveBaseTypeAdapter<LogHiveModel> {
  @override
  final int typeId = 33;

  @override
  LogHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LogHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      deviceId: fields[2] as String,
      entityId: fields[3] as String,
      action: fields[4] as SyncAction,
      data: (fields[5] as Map).cast<String, dynamic>(),
      recordedAt: fields[6] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, LogHiveModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.deviceId)
      ..writeByte(3)
      ..write(obj.entityId)
      ..writeByte(4)
      ..write(obj.action)
      ..writeByte(5)
      ..write(obj.data)
      ..writeByte(6)
      ..write(obj.recordedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
