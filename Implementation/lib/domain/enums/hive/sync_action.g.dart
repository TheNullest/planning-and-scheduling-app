// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_action.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SyncActionAdapter extends HiveBaseTypeAdapter<SyncAction> {
  @override
  final int typeId = 111;

  @override
  SyncAction read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SyncAction.create;
      case 1:
        return SyncAction.update;
      case 2:
        return SyncAction.delete;
      default:
        return SyncAction.create;
    }
  }

  @override
  void write(BinaryWriter writer, SyncAction obj) {
    switch (obj) {
      case SyncAction.create:
        writer.writeByte(0);
        break;
      case SyncAction.update:
        writer.writeByte(1);
        break;
      case SyncAction.delete:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncActionAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
