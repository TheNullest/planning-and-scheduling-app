// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_task_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MainTaskHiveModelAdapter extends HiveBaseTypeAdapter<MainTaskHiveModel> {
  @override
  final int typeId = 1;

  @override
  MainTaskHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MainTaskHiveModel(
      title: fields[5] as String,
      categoryIds: (fields[10] as List).cast<String>(),
      colorCode: fields[6] as int,
      iconCode: fields[7] as int,
      id: fields[0] as String?,
      updatedAt: fields[4] as DateTime?,
      userId: fields[1] as String?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      priority: fields[8] as int?,
      status: fields[14] as int?,
      fixedTagIds: (fields[11] as List?)?.cast<String>(),
      tagIds: (fields[12] as List?)?.cast<String>(),
      dueDate: fields[9] as DateTime?,
      totalSpentTime: fields[13] as Duration?,
      taskSchedulerId: fields[15] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MainTaskHiveModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(5)
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.colorCode)
      ..writeByte(7)
      ..write(obj.iconCode)
      ..writeByte(8)
      ..write(obj.priority)
      ..writeByte(9)
      ..write(obj.dueDate)
      ..writeByte(10)
      ..write(obj.categoryIds)
      ..writeByte(11)
      ..write(obj.fixedTagIds)
      ..writeByte(12)
      ..write(obj.tagIds)
      ..writeByte(13)
      ..write(obj.totalSpentTime)
      ..writeByte(14)
      ..write(obj.status)
      ..writeByte(15)
      ..write(obj.taskSchedulerId)
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
      other is MainTaskHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
