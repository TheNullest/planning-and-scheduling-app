// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_day.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeekDayAdapter extends TypeAdapter<WeekDay> {
  @override
  final int typeId = 113;

  @override
  WeekDay read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return WeekDay.monday;
      case 1:
        return WeekDay.tuesday;
      case 2:
        return WeekDay.wednesday;
      case 3:
        return WeekDay.thursday;
      case 4:
        return WeekDay.friday;
      case 5:
        return WeekDay.saturday;
      case 6:
        return WeekDay.sunday;
      default:
        return WeekDay.monday;
    }
  }

  @override
  void write(BinaryWriter writer, WeekDay obj) {
    switch (obj) {
      case WeekDay.monday:
        writer.writeByte(0);
        break;
      case WeekDay.tuesday:
        writer.writeByte(1);
        break;
      case WeekDay.wednesday:
        writer.writeByte(2);
        break;
      case WeekDay.thursday:
        writer.writeByte(3);
        break;
      case WeekDay.friday:
        writer.writeByte(4);
        break;
      case WeekDay.saturday:
        writer.writeByte(5);
        break;
      case WeekDay.sunday:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeekDayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
