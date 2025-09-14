// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_constraints_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleConstraintsHiveModelAdapter
    extends HiveBaseTypeAdapter<ScheduleConstraintsHiveModel> {
  @override
  final int typeId = 17;

  @override
  ScheduleConstraintsHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduleConstraintsHiveModel(
      id: fields[0] as String,
      userId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      taskId: fields[11] as String,
      startDate: fields[12] as DateTime?,
      endDate: fields[13] as DateTime?,
      exceptionWeekDays: (fields[15] as List).cast<WeekDay>(),
      exceptionMonthDays: (fields[16] as List).cast<int>(),
      exceptionDates: (fields[17] as List).cast<DateTime>(),
      enforceScheduleBounds: fields[14] as bool,
      description: fields[3] as String?,
      updatedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduleConstraintsHiveModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(11)
      ..write(obj.taskId)
      ..writeByte(12)
      ..write(obj.startDate)
      ..writeByte(13)
      ..write(obj.endDate)
      ..writeByte(14)
      ..write(obj.enforceScheduleBounds)
      ..writeByte(15)
      ..write(obj.exceptionWeekDays)
      ..writeByte(16)
      ..write(obj.exceptionMonthDays)
      ..writeByte(17)
      ..write(obj.exceptionDates)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.order);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleConstraintsHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
