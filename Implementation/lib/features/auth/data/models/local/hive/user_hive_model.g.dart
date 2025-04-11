// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserHiveModelAdapter extends HiveBaseTypeAdapter<UserHiveModel> {
  @override
  final int typeId = 0;

  @override
  UserHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserHiveModel(
      userName: fields[11] as String,
      password: fields[12] as String,
      firstName: fields[13] as String,
      lastName: fields[14] as String,
      emailAddress: fields[15] as String,
      id: fields[0] as String?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      updatedAt: fields[4] as DateTime?,
      birthDate: fields[16] as DateTime?,
      avatarPath: fields[17] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserHiveModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(11)
      ..write(obj.userName)
      ..writeByte(12)
      ..write(obj.password)
      ..writeByte(13)
      ..write(obj.firstName)
      ..writeByte(14)
      ..write(obj.lastName)
      ..writeByte(15)
      ..write(obj.emailAddress)
      ..writeByte(16)
      ..write(obj.birthDate)
      ..writeByte(17)
      ..write(obj.avatarPath)
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
      other is UserHiveModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
