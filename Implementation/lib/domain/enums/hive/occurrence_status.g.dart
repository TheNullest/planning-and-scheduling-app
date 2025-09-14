// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occurrence_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OccurrenceStatusAdapter extends HiveBaseTypeAdapter<OccurrenceStatus> {
  @override
  final int typeId = 114;

  @override
  OccurrenceStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return OccurrenceStatus.scheduled;
      case 1:
        return OccurrenceStatus.inProgress;
      case 2:
        return OccurrenceStatus.completed;
      case 3:
        return OccurrenceStatus.cancelled;
      case 4:
        return OccurrenceStatus.missed;
      case 5:
        return OccurrenceStatus.skipped;
      case 6:
        return OccurrenceStatus.failed;
      default:
        return OccurrenceStatus.scheduled;
    }
  }

  @override
  void write(BinaryWriter writer, OccurrenceStatus obj) {
    switch (obj) {
      case OccurrenceStatus.scheduled:
        writer.writeByte(0);
        break;
      case OccurrenceStatus.inProgress:
        writer.writeByte(1);
        break;
      case OccurrenceStatus.completed:
        writer.writeByte(2);
        break;
      case OccurrenceStatus.cancelled:
        writer.writeByte(3);
        break;
      case OccurrenceStatus.missed:
        writer.writeByte(4);
        break;
      case OccurrenceStatus.skipped:
        writer.writeByte(5);
        break;
      case OccurrenceStatus.failed:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OccurrenceStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
