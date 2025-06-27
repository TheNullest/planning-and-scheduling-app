// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repetition_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RepetitionTypeAdapter extends HiveBaseTypeAdapter<RepetitionType> {
  @override
  final int typeId = 109;

  @override
  RepetitionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RepetitionType.minutely;
      case 2:
        return RepetitionType.hourly;
      case 3:
        return RepetitionType.weekly;
      case 4:
        return RepetitionType.daily;
      case 5:
        return RepetitionType.weekdays;
      case 6:
        return RepetitionType.monthly;
      case 7:
        return RepetitionType.yearly;
      case 8:
        return RepetitionType.custom;
      default:
        return RepetitionType.minutely;
    }
  }

  @override
  void write(BinaryWriter writer, RepetitionType obj) {
    switch (obj) {
      case RepetitionType.minutely:
        writer.writeByte(0);
        break;
      case RepetitionType.hourly:
        writer.writeByte(2);
        break;
      case RepetitionType.weekly:
        writer.writeByte(3);
        break;
      case RepetitionType.daily:
        writer.writeByte(4);
        break;
      case RepetitionType.weekdays:
        writer.writeByte(5);
        break;
      case RepetitionType.monthly:
        writer.writeByte(6);
        break;
      case RepetitionType.yearly:
        writer.writeByte(7);
        break;
      case RepetitionType.custom:
        writer.writeByte(8);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RepetitionTypeAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
