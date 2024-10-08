// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_category_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveCategoryModelAdapter extends HiveBaseTypeAdapter<HiveCategoryModel> {
  @override
  final int typeId = 2;

  @override
  HiveCategoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCategoryModel(
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
  void write(BinaryWriter writer, HiveCategoryModel obj) {
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
      other is HiveCategoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
