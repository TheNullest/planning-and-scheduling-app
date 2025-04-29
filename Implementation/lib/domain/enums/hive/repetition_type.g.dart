// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repetition_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RepetitionTypeAdapter extends TypeAdapter<RepetitionType> {
  @override
  final int typeId = 109;

  @override
  RepetitionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return RepetitionType.weekly;
      case 1:
        return RepetitionType.daily;
      case 2:
        return RepetitionType.weekdays;
      case 3:
        return RepetitionType.monthly;
      case 4:
        return RepetitionType.yearly;
      case 5:
        return RepetitionType.custom;
      default:
        return RepetitionType.weekly;
    }
  }

  @override
  void write(BinaryWriter writer, RepetitionType obj) {
    switch (obj) {
      case RepetitionType.weekly:
        writer.writeByte(0);
        break;
      case RepetitionType.daily:
        writer.writeByte(1);
        break;
      case RepetitionType.weekdays:
        writer.writeByte(2);
        break;
      case RepetitionType.monthly:
        writer.writeByte(3);
        break;
      case RepetitionType.yearly:
        writer.writeByte(4);
        break;
      case RepetitionType.custom:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RepetitionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
