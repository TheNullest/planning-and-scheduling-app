// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GoalHiveModelAdapter extends HiveBaseTypeAdapter<GoalHiveModel> {
  @override
  final int typeId = 4;

  @override
  GoalHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GoalHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
      refType: fields[11] as ReferenceType,
      refId: fields[12] as String,
      measurementUnit: fields[13] as MeasurementUnit?,
      goalConstraint: fields[14] as GoalConstraint,
      minutelyTarget: fields[15] as double,
      hourlyTarget: fields[16] as double,
      dailyTarget: fields[17] as double,
      weeklyTarget: fields[18] as double,
      monthlyTarget: fields[19] as double,
      yearlyTarget: fields[20] as double,
      customMeasurementUnitId: fields[21] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, GoalHiveModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(11)
      ..write(obj.refType)
      ..writeByte(12)
      ..write(obj.refId)
      ..writeByte(13)
      ..write(obj.measurementUnit)
      ..writeByte(14)
      ..write(obj.goalConstraint)
      ..writeByte(15)
      ..write(obj.minutelyTarget)
      ..writeByte(16)
      ..write(obj.hourlyTarget)
      ..writeByte(17)
      ..write(obj.dailyTarget)
      ..writeByte(18)
      ..write(obj.weeklyTarget)
      ..writeByte(19)
      ..write(obj.monthlyTarget)
      ..writeByte(20)
      ..write(obj.yearlyTarget)
      ..writeByte(21)
      ..write(obj.customMeasurementUnitId)
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
      other is GoalHiveModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
