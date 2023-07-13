// ignore_for_file: overridden_fields

import 'package:hive/hive.dart';
import 'package:linkemo/features/home/domain/entity/tag.dart';

part 'tag_model.g.dart';

@HiveType(typeId: 1)
class TagModel extends Tag {
  @override
  @HiveField(0)
  final String name;

  const TagModel({required this.name}) : super(name: name);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (!(super == other)) return false;
    if (other is TagModel && name != other.name) return false;
    return true;
  }
  
  @override
  int get hashCode => Object.hash(super.hashCode, name);
}