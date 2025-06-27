// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TagHiveModelAdapter extends HiveBaseTypeAdapter<TagHiveModel> {
  @override
  final int typeId = 21;

  @override
  TagHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TagHiveModel(
      id: fields[0] as String?,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
      title: fields[11] as String,
      colorCode: fields[12] as int,
      iconCode: fields[13] as int,
      taskId: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TagHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(14)
      ..write(obj.taskId)
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
      other is TagHiveModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
