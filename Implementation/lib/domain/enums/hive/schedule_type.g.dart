// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleTypeAdapter extends HiveBaseTypeAdapter<ScheduleType> {
  @override
  final int typeId = 110;

  @override
  ScheduleType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ScheduleType.fixedDate;
      case 1:
        return ScheduleType.recurringWeekDays;
      case 2:
        return ScheduleType.recurringMonthDays;
      case 3:
        return ScheduleType.recurringIntervals;
      default:
        return ScheduleType.fixedDate;
    }
  }

  @override
  void write(BinaryWriter writer, ScheduleType obj) {
    switch (obj) {
      case ScheduleType.fixedDate:
        writer.writeByte(0);
        break;
      case ScheduleType.recurringWeekDays:
        writer.writeByte(1);
        break;
      case ScheduleType.recurringMonthDays:
        writer.writeByte(2);
        break;
      case ScheduleType.recurringIntervals:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleTypeAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
