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
      userName: fields[5] as String,
      password: fields[6] as String,
      firstName: fields[7] as String,
      lastName: fields[8] as String,
      emailAddress: fields[9] as String,
      id: fields[0] as String?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      updatedAt: fields[4] as DateTime?,
      birthDate: fields[10] as DateTime?,
      avatarPath: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserHiveModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(5)
      ..write(obj.userName)
      ..writeByte(6)
      ..write(obj.password)
      ..writeByte(7)
      ..write(obj.firstName)
      ..writeByte(8)
      ..write(obj.lastName)
      ..writeByte(9)
      ..write(obj.emailAddress)
      ..writeByte(10)
      ..write(obj.birthDate)
      ..writeByte(11)
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
      other is UserHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
