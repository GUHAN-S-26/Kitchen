// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsageModelAdapter extends TypeAdapter<UsageModel> {
  @override
  final int typeId = 2;

  @override
  UsageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UsageModel(
      id: fields[0] as String,
      itemId: fields[1] as String,
      itemName: fields[2] as String,
      itemType: fields[3] as String,
      quantityUsed: fields[4] as double,
      unit: fields[5] as String,
      note: fields[6] as String?,
      createdAt: fields[7] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, UsageModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.itemId)
      ..writeByte(2)
      ..write(obj.itemName)
      ..writeByte(3)
      ..write(obj.itemType)
      ..writeByte(4)
      ..write(obj.quantityUsed)
      ..writeByte(5)
      ..write(obj.unit)
      ..writeByte(6)
      ..write(obj.note)
      ..writeByte(7)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
