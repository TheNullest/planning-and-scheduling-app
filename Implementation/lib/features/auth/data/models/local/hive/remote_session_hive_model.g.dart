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
      accessToken: fields[0] as String,
      refreshToken: fields[1] as String,
      expiresAt: fields[2] as int,
      user: fields[3] as UserHiveModel,
    );
  }

  @override
  void write(BinaryWriter writer, RemoteSessionHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.expiresAt)
      ..writeByte(3)
      ..write(obj.user);
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
