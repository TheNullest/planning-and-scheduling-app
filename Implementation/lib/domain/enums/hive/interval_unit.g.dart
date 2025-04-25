// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval_unit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IntervalUnitAdapter extends TypeAdapter<IntervalUnit> {
  @override
  final int typeId = 110;

  @override
  IntervalUnit read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return IntervalUnit.hours;
      case 1:
        return IntervalUnit.days;
      case 2:
        return IntervalUnit.weeks;
      case 3:
        return IntervalUnit.months;
      default:
        return IntervalUnit.hours;
    }
  }

  @override
  void write(BinaryWriter writer, IntervalUnit obj) {
    switch (obj) {
      case IntervalUnit.hours:
        writer.writeByte(0);
        break;
      case IntervalUnit.days:
        writer.writeByte(1);
        break;
      case IntervalUnit.weeks:
        writer.writeByte(2);
        break;
      case IntervalUnit.months:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IntervalUnitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
