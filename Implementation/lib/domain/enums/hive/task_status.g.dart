// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskStatusAdapter extends TypeAdapter<TaskStatus> {
  @override
  final int typeId = 112;

  @override
  TaskStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TaskStatus.inProgress;
      case 1:
        return TaskStatus.paused;
      case 2:
        return TaskStatus.done;
      case 3:
        return TaskStatus.overdue;
      case 4:
        return TaskStatus.doneLate;
      case 5:
        return TaskStatus.failed;
      case 6:
        return TaskStatus.cancelled;
      default:
        return TaskStatus.inProgress;
    }
  }

  @override
  void write(BinaryWriter writer, TaskStatus obj) {
    switch (obj) {
      case TaskStatus.inProgress:
        writer.writeByte(0);
        break;
      case TaskStatus.paused:
        writer.writeByte(1);
        break;
      case TaskStatus.done:
        writer.writeByte(2);
        break;
      case TaskStatus.overdue:
        writer.writeByte(3);
        break;
      case TaskStatus.doneLate:
        writer.writeByte(4);
        break;
      case TaskStatus.failed:
        writer.writeByte(5);
        break;
      case TaskStatus.cancelled:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
