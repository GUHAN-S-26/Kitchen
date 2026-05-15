// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_tool_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KitchenToolModelAdapter extends TypeAdapter<KitchenToolModel> {
  @override
  final int typeId = 1;

  @override
  KitchenToolModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KitchenToolModel(
      id: fields[0] as String,
      name: fields[1] as String,
      quantity: fields[2] as int,
      unit: fields[3] as String? ?? 'piece',
      condition: fields[4] as String? ?? 'available',
      category: fields[5] as String? ?? '',
      block: fields[6] as String? ?? '',
      location: fields[7] as String? ?? '',
      material: fields[8] as String?,
      imagePath: fields[9] as String?,
      notes: fields[10] as String?,
      createdAt: fields[11] as DateTime?,
      purchaseDate: fields[12] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, KitchenToolModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.quantity)
      ..writeByte(3)
      ..write(obj.unit)
      ..writeByte(4)
      ..write(obj.condition)
      ..writeByte(5)
      ..write(obj.category)
      ..writeByte(6)
      ..write(obj.block)
      ..writeByte(7)
      ..write(obj.location)
      ..writeByte(8)
      ..write(obj.material)
      ..writeByte(9)
      ..write(obj.imagePath)
      ..writeByte(10)
      ..write(obj.notes)
      ..writeByte(11)
      ..write(obj.createdAt)
      ..writeByte(12)
      ..write(obj.purchaseDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KitchenToolModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
