// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReferenceTypeAdapter extends TypeAdapter<ReferenceType> {
  @override
  final int typeId = 108;

  @override
  ReferenceType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ReferenceType.task;
      case 1:
        return ReferenceType.subTask;
      default:
        return ReferenceType.task;
    }
  }

  @override
  void write(BinaryWriter writer, ReferenceType obj) {
    switch (obj) {
      case ReferenceType.task:
        writer.writeByte(0);
        break;
      case ReferenceType.subTask:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReferenceTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
