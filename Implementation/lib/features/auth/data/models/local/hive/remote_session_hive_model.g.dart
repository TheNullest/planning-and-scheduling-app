// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_session_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RemoteSessionHiveModelAdapter extends HiveBaseTypeAdapter<RemoteSessionHiveModel> {
  @override
  final int typeId = 25;

  @override
  RemoteSessionHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RemoteSessionHiveModel(
      accessToken: fields[1] as String,
      refreshToken: fields[2] as String,
      expiresAt: fields[3] as int,
      userId: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RemoteSessionHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.accessToken)
      ..writeByte(2)
      ..write(obj.refreshToken)
      ..writeByte(3)
      ..write(obj.expiresAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RemoteSessionHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
