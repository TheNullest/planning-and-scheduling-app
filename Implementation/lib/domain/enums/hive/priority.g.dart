// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'priority.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PriorityAdapter extends HiveBaseTypeAdapter<Priority> {
  @override
  final int typeId = 107;

  @override
  Priority read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Priority.optional;
      case 1:
        return Priority.low;
      case 2:
        return Priority.medium;
      case 3:
        return Priority.high;
      case 4:
        return Priority.critical;
      default:
        return Priority.optional;
    }
  }

  @override
  void write(BinaryWriter writer, Priority obj) {
    switch (obj) {
      case Priority.optional:
        writer.writeByte(0);
        break;
      case Priority.low:
        writer.writeByte(1);
        break;
      case Priority.medium:
        writer.writeByte(2);
        break;
      case Priority.high:
        writer.writeByte(3);
        break;
      case Priority.critical:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriorityAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
