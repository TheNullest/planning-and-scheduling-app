// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SchedulerTypeAdapter extends TypeAdapter<SchedulerType> {
  @override
  final int typeId = 110;

  @override
  SchedulerType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SchedulerType.schedudleDefinition;
      case 1:
        return SchedulerType.scheduleDay;
      case 2:
        return SchedulerType.scheduleInterval;
      default:
        return SchedulerType.schedudleDefinition;
    }
  }

  @override
  void write(BinaryWriter writer, SchedulerType obj) {
    switch (obj) {
      case SchedulerType.schedudleDefinition:
        writer.writeByte(0);
        break;
      case SchedulerType.scheduleDay:
        writer.writeByte(1);
        break;
      case SchedulerType.scheduleInterval:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SchedulerTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
