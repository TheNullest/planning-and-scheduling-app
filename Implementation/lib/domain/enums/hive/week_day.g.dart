// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_day.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WeekDayAdapter extends TypeAdapter<WeekDay> {
  @override
  final int typeId = 109;

  @override
  WeekDay read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return WeekDay.saturday;
      case 1:
        return WeekDay.sunday;
      case 2:
        return WeekDay.monday;
      case 3:
        return WeekDay.tuesday;
      case 4:
        return WeekDay.wednesday;
      case 5:
        return WeekDay.thursday;
      case 6:
        return WeekDay.friday;
      default:
        return WeekDay.saturday;
    }
  }

  @override
  void write(BinaryWriter writer, WeekDay obj) {
    switch (obj) {
      case WeekDay.saturday:
        writer.writeByte(0);
        break;
      case WeekDay.sunday:
        writer.writeByte(1);
        break;
      case WeekDay.monday:
        writer.writeByte(2);
        break;
      case WeekDay.tuesday:
        writer.writeByte(3);
        break;
      case WeekDay.wednesday:
        writer.writeByte(4);
        break;
      case WeekDay.thursday:
        writer.writeByte(5);
        break;
      case WeekDay.friday:
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
