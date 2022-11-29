// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modals.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StdModalAdapter extends TypeAdapter<StdModal> {
  @override
  final int typeId = 1;

  @override
  StdModal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StdModal(
      name: fields[0] as String,
      age: fields[1] as String,
      email: fields[2] as String,
      number: fields[3] as String,
      photo: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StdModal obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.number)
      ..writeByte(4)
      ..write(obj.photo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StdModalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
