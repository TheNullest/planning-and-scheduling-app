// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_tag_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveTagModelAdapter extends HiveBaseTypeAdapter<HiveTagModel> {
  @override
  final int typeId = 7;

  @override
  HiveTagModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveTagModel(
      id: fields[0] as String?,
      order: fields[100] as int,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      creatorId: fields[1] as String?,
      title: fields[4] as String,
      colorCode: fields[5] as int,
      iconCode: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveTagModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.colorCode)
      ..writeByte(6)
      ..write(obj.iconCode)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(100)
      ..write(obj.order)
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
      other is HiveTagModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
