// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveUserModelAdapter extends HiveBaseTypeAdapter<HiveUserModel> {
  @override
  final int typeId = 0;

  @override
  HiveUserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveUserModel(
      id: fields[0] as String?,
      description: fields[3] as String?,
      userName: fields[4] as String,
      password: fields[5] as String,
      firstName: fields[6] as String,
      lastName: fields[7] as String,
      createdAt: fields[2] as DateTime,
      emailAddress: fields[8] as String,
      birthDate: fields[9] as DateTime?,
      avatarPath: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveUserModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(4)
      ..write(obj.userName)
      ..writeByte(5)
      ..write(obj.password)
      ..writeByte(6)
      ..write(obj.firstName)
      ..writeByte(7)
      ..write(obj.lastName)
      ..writeByte(8)
      ..write(obj.emailAddress)
      ..writeByte(9)
      ..write(obj.birthDate)
      ..writeByte(10)
      ..write(obj.avatarPath)
      ..writeByte(0)
      ..write(obj.id)
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
      other is HiveUserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}