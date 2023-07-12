// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LinkDetailsModelAdapter extends TypeAdapter<LinkDetailsModel> {
  @override
  final int typeId = 0;

  @override
  LinkDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LinkDetailsModel(
      link: fields[0] as String,
      createdAt: fields[1] as DateTime,
      description: fields[2] as String?,
      tags: (fields[3] as List?)?.cast<TagModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, LinkDetailsModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.link)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinkDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
