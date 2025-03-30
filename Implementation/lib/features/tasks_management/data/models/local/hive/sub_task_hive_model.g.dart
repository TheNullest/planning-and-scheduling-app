// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_task_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubTaskHiveModelAdapter extends HiveBaseTypeAdapter<SubTaskHiveModel> {
  @override
  final int typeId = 6;

  @override
  SubTaskHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubTaskHiveModel(
      mainTaskId: fields[5] as String,
      title: fields[7] as String,
      id: fields[0] as String?,
      updatedAt: fields[4] as DateTime?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      userId: fields[1] as String?,
      priority: fields[6] as int?,
      status: fields[8] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, SubTaskHiveModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(5)
      ..write(obj.mainTaskId)
      ..writeByte(6)
      ..write(obj.priority)
      ..writeByte(7)
      ..write(obj.title)
      ..writeByte(8)
      ..write(obj.status)
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
      other is SubTaskHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
