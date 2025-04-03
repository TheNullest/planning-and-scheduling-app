// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TagHiveModelAdapter extends TypeAdapter<TagHiveModel> {
  @override
  final int typeId = 7;

  @override
  TagHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TagHiveModel(
      title: fields[11] as String,
      colorCode: fields[12] as String,
      iconCode: fields[13] as String,
      id: fields[0] as String?,
      updatedAt: fields[4] as DateTime?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      userId: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TagHiveModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(11)
      ..write(obj.title)
      ..writeByte(12)
      ..write(obj.colorCode)
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
      other is TagHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
