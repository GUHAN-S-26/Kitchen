// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GroceryModelAdapter extends TypeAdapter<GroceryModel> {
  @override
  final int typeId = 0;

  @override
  GroceryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GroceryModel(
      id: fields[0] as String,
      name: fields[1] as String,
      quantity: fields[2] as double,
      unit: fields[3] as String,
      category: fields[4] as String? ?? '',
      block: fields[5] as String? ?? '',
      shelf: fields[6] as String? ?? '',
      minimumStock: fields[7] as double? ?? 0,
      expiryDate: fields[8] as DateTime?,
      imagePath: fields[9] as String?,
      notes: fields[10] as String?,
      createdAt: fields[11] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, GroceryModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.quantity)
      ..writeByte(3)
      ..write(obj.unit)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.block)
      ..writeByte(6)
      ..write(obj.shelf)
      ..writeByte(7)
      ..write(obj.minimumStock)
      ..writeByte(8)
      ..write(obj.expiryDate)
      ..writeByte(9)
      ..write(obj.imagePath)
      ..writeByte(10)
      ..write(obj.notes)
      ..writeByte(11)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroceryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
