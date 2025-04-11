// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_log.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SyncLogHiveModelAdapter extends HiveBaseTypeAdapter<SyncLogHiveModel> {
  @override
  final int typeId = 31;

  @override
  SyncLogHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SyncLogHiveModel(
      id: fields[0] as String,
      deviceId: fields[1] as String,
      userId: fields[2] as String,
      syncLogId: fields[3] as String,
      isSynced: fields[4] as bool,
      syncedAt: fields[5] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, SyncLogHiveModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.deviceId)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.syncLogId)
      ..writeByte(4)
      ..write(obj.isSynced)
      ..writeByte(5)
      ..write(obj.syncedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncLogHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
