// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryHiveModelAdapter extends HiveBaseTypeAdapter<CategoryHiveModel> {
  @override
  final int typeId = 2;

  @override
  CategoryHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryHiveModel(
      title: fields[5] as String,
      colorCode: fields[6] as int,
      iconCode: fields[7] as int,
      id: fields[0] as String?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      updatedAt: fields[4] as DateTime?,
      userId: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryHiveModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(5)
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.colorCode)
      ..writeByte(7)
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
      other is CategoryHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
