// ignore_for_file: overridden_fields

import 'package:hive/hive.dart';
import 'package:linkemo/features/home/domain/entity/tag.dart';

part 'tag_model.g.dart';

@HiveType(typeId: 1)
class TagModel extends Tag {
  @override
  @HiveField(0)
  final String name;

  TagModel({required this.name}) : super(name: name);
}