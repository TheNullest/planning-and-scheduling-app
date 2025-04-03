// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GoalHiveModelAdapter extends TypeAdapter<GoalHiveModel> {
  @override
  final int typeId = 3;

  @override
  GoalHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GoalHiveModel(
      mainTaskId: fields[11] as String,
      measurementUnitId: fields[13] as String,
      measurementValue: fields[14] as int,
      id: fields[0] as String?,
      updatedAt: fields[4] as DateTime?,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      userId: fields[1] as String?,
      subTaskId: fields[12] as String?,
      perActiveHour: fields[15] as double,
      perActiveDay: fields[16] as double,
      perActiveWeek: fields[17] as double,
      perActiveMonth: fields[18] as double,
      perActiveYear: fields[19] as double,
    );
  }

  @override
  void write(BinaryWriter writer, GoalHiveModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(11)
      ..write(obj.mainTaskId)
      ..writeByte(12)
      ..write(obj.subTaskId)
      ..writeByte(13)
      ..write(obj.measurementUnitId)
      ..writeByte(14)
      ..write(obj.measurementValue)
      ..writeByte(15)
      ..write(obj.perActiveHour)
      ..writeByte(16)
      ..write(obj.perActiveDay)
      ..writeByte(17)
      ..write(obj.perActiveWeek)
      ..writeByte(18)
      ..write(obj.perActiveMonth)
      ..writeByte(19)
      ..write(obj.perActiveYear)
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
      other is GoalHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
