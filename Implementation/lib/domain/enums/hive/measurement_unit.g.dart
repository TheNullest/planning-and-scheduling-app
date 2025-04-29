// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_unit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasurementUnitAdapter extends TypeAdapter<MeasurementUnit> {
  @override
  final int typeId = 105;

  @override
  MeasurementUnit read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MeasurementUnit.ton;
      case 1:
        return MeasurementUnit.kilogram;
      case 2:
        return MeasurementUnit.gram;
      case 3:
        return MeasurementUnit.milligram;
      case 4:
        return MeasurementUnit.microgram;
      case 5:
        return MeasurementUnit.ounce;
      case 6:
        return MeasurementUnit.kilometer;
      case 7:
        return MeasurementUnit.mile;
      case 8:
        return MeasurementUnit.meter;
      case 9:
        return MeasurementUnit.centimeter;
      case 10:
        return MeasurementUnit.millimeter;
      case 11:
        return MeasurementUnit.yard;
      case 12:
        return MeasurementUnit.foot;
      case 13:
        return MeasurementUnit.inch;
      case 14:
        return MeasurementUnit.hectare;
      case 15:
        return MeasurementUnit.squareMeter;
      case 16:
        return MeasurementUnit.squareCentimeter;
      case 17:
        return MeasurementUnit.cubicMeter;
      case 18:
        return MeasurementUnit.kiloliter;
      case 19:
        return MeasurementUnit.liter;
      case 20:
        return MeasurementUnit.milliliter;
      case 21:
        return MeasurementUnit.hour;
      case 22:
        return MeasurementUnit.minute;
      case 23:
        return MeasurementUnit.second;
      case 24:
        return MeasurementUnit.millisecond;
      case 25:
        return MeasurementUnit.toman;
      case 26:
        return MeasurementUnit.rial;
      case 27:
        return MeasurementUnit.dollar;
      case 28:
        return MeasurementUnit.euro;
      case 29:
        return MeasurementUnit.book;
      case 30:
        return MeasurementUnit.collection;
      case 31:
        return MeasurementUnit.page;
      case 32:
        return MeasurementUnit.item;
      case 33:
        return MeasurementUnit.number;
      case 34:
        return MeasurementUnit.custom;
      default:
        return MeasurementUnit.ton;
    }
  }

  @override
  void write(BinaryWriter writer, MeasurementUnit obj) {
    switch (obj) {
      case MeasurementUnit.ton:
        writer.writeByte(0);
        break;
      case MeasurementUnit.kilogram:
        writer.writeByte(1);
        break;
      case MeasurementUnit.gram:
        writer.writeByte(2);
        break;
      case MeasurementUnit.milligram:
        writer.writeByte(3);
        break;
      case MeasurementUnit.microgram:
        writer.writeByte(4);
        break;
      case MeasurementUnit.ounce:
        writer.writeByte(5);
        break;
      case MeasurementUnit.kilometer:
        writer.writeByte(6);
        break;
      case MeasurementUnit.mile:
        writer.writeByte(7);
        break;
      case MeasurementUnit.meter:
        writer.writeByte(8);
        break;
      case MeasurementUnit.centimeter:
        writer.writeByte(9);
        break;
      case MeasurementUnit.millimeter:
        writer.writeByte(10);
        break;
      case MeasurementUnit.yard:
        writer.writeByte(11);
        break;
      case MeasurementUnit.foot:
        writer.writeByte(12);
        break;
      case MeasurementUnit.inch:
        writer.writeByte(13);
        break;
      case MeasurementUnit.hectare:
        writer.writeByte(14);
        break;
      case MeasurementUnit.squareMeter:
        writer.writeByte(15);
        break;
      case MeasurementUnit.squareCentimeter:
        writer.writeByte(16);
        break;
      case MeasurementUnit.cubicMeter:
        writer.writeByte(17);
        break;
      case MeasurementUnit.kiloliter:
        writer.writeByte(18);
        break;
      case MeasurementUnit.liter:
        writer.writeByte(19);
        break;
      case MeasurementUnit.milliliter:
        writer.writeByte(20);
        break;
      case MeasurementUnit.hour:
        writer.writeByte(21);
        break;
      case MeasurementUnit.minute:
        writer.writeByte(22);
        break;
      case MeasurementUnit.second:
        writer.writeByte(23);
        break;
      case MeasurementUnit.millisecond:
        writer.writeByte(24);
        break;
      case MeasurementUnit.toman:
        writer.writeByte(25);
        break;
      case MeasurementUnit.rial:
        writer.writeByte(26);
        break;
      case MeasurementUnit.dollar:
        writer.writeByte(27);
        break;
      case MeasurementUnit.euro:
        writer.writeByte(28);
        break;
      case MeasurementUnit.book:
        writer.writeByte(29);
        break;
      case MeasurementUnit.collection:
        writer.writeByte(30);
        break;
      case MeasurementUnit.page:
        writer.writeByte(31);
        break;
      case MeasurementUnit.item:
        writer.writeByte(32);
        break;
      case MeasurementUnit.number:
        writer.writeByte(33);
        break;
      case MeasurementUnit.custom:
        writer.writeByte(34);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeasurementUnitAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
