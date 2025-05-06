// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval_unit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IntervalUnitAdapter extends HiveBaseTypeAdapter<IntervalUnit> {
  @override
  final int typeId = 103;

  @override
  IntervalUnit read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return IntervalUnit.minutes;
      case 1:
        return IntervalUnit.hours;
      case 2:
        return IntervalUnit.days;
      case 3:
        return IntervalUnit.weeks;
      case 4:
        return IntervalUnit.months;
      case 5:
        return IntervalUnit.years;
      default:
        return IntervalUnit.minutes;
    }
  }

  @override
  void write(BinaryWriter writer, IntervalUnit obj) {
    switch (obj) {
      case IntervalUnit.minutes:
        writer.writeByte(0);
        break;
      case IntervalUnit.hours:
        writer.writeByte(1);
        break;
      case IntervalUnit.days:
        writer.writeByte(2);
        break;
      case IntervalUnit.weeks:
        writer.writeByte(3);
        break;
      case IntervalUnit.months:
        writer.writeByte(4);
        break;
      case IntervalUnit.years:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IntervalUnitAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
