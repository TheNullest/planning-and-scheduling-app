// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SchedulerTypeAdapter extends HiveBaseTypeAdapter<SchedulerType> {
  @override
  final int typeId = 110;

  @override
  SchedulerType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SchedulerType.schedudleConstraint;
      case 1:
        return SchedulerType.scheduledDay;
      case 2:
        return SchedulerType.scheduledInterval;
      default:
        return SchedulerType.schedudleConstraint;
    }
  }

  @override
  void write(BinaryWriter writer, SchedulerType obj) {
    switch (obj) {
      case SchedulerType.schedudleConstraint:
        writer.writeByte(0);
        break;
      case SchedulerType.scheduledDay:
        writer.writeByte(1);
        break;
      case SchedulerType.scheduledInterval:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SchedulerTypeAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
