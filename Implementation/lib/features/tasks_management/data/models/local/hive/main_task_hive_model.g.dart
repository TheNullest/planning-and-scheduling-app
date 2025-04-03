// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_task_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MainTaskHiveModelAdapter extends TypeAdapter<MainTaskHiveModel> {
  @override
  final int typeId = 1;

  @override
  MainTaskHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MainTaskHiveModel(
      title: fields[11] as String,
      categoryIds: (fields[16] as List).cast<String>(),
      colorCode: fields[12] as String,
      iconCode: fields[13] as String,
      id: fields[0] as String?,
      updatedAt: fields[4] as DateTime?,
      userId: fields[1] as String?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      priority: fields[14] as int?,
      status: fields[20] as int?,
      fixedTagIds: (fields[17] as List?)?.cast<String>(),
      tagIds: (fields[18] as List?)?.cast<String>(),
      dueDate: fields[15] as DateTime?,
      totalSpentTime: fields[19] as Duration?,
      taskSchedulerId: fields[21] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MainTaskHiveModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(11)
      ..write(obj.title)
      ..writeByte(12)
      ..write(obj.colorCode)
      ..writeByte(13)
      ..write(obj.iconCode)
      ..writeByte(14)
      ..write(obj.priority)
      ..writeByte(15)
      ..write(obj.dueDate)
      ..writeByte(16)
      ..write(obj.categoryIds)
      ..writeByte(17)
      ..write(obj.fixedTagIds)
      ..writeByte(18)
      ..write(obj.tagIds)
      ..writeByte(19)
      ..write(obj.totalSpentTime)
      ..writeByte(20)
      ..write(obj.status)
      ..writeByte(21)
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
