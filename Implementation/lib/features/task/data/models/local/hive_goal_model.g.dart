// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_goal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveGoalModelAdapter extends HiveBaseTypeAdapter<HiveGoalModel> {
  @override
  final int typeId = 3;

  @override
  HiveGoalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveGoalModel(
      id: fields[0] as String?,
      order: fields[100] as int,
      description: fields[3] as String?,
      createdAt: fields[2] as DateTime?,
      creatorId: fields[1] as String?,
      mainTaskId: fields[4] as String,
      measurementUnitId: fields[6] as String,
      measurementValue: fields[7] as int,
      subTaskId: fields[5] as String?,
      perActiveHour: fields[8] as double,
      perActiveDay: fields[9] as double,
      perActiveWeek: fields[10] as double,
      perActiveMonth: fields[11] as double,
      perActiveYear: fields[12] as double,
    );
  }

  @override
  void write(BinaryWriter writer, HiveGoalModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(4)
      ..write(obj.mainTaskId)
      ..writeByte(5)
      ..write(obj.subTaskId)
      ..writeByte(6)
      ..write(obj.measurementUnitId)
      ..writeByte(7)
      ..write(obj.measurementValue)
      ..writeByte(8)
      ..write(obj.perActiveHour)
      ..writeByte(9)
      ..write(obj.perActiveDay)
      ..writeByte(10)
      ..write(obj.perActiveWeek)
      ..writeByte(11)
      ..write(obj.perActiveMonth)
      ..writeByte(12)
      ..write(obj.perActiveYear)
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
      other is HiveGoalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}