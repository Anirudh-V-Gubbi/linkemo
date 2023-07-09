// ignore_for_file: overridden_fields

import 'package:hive/hive.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';

part 'link_details_model.g.dart';

@HiveType(typeId: 0)
class LinkDetailsModel extends LinkDetails {
  @override
  @HiveField(0)
  final String link;

  @override
  @HiveField(1)
  final DateTime createdAt;

  @override
  @HiveField(2)
  final String? description;

  @override
  @HiveField(3)
  final List<String>? tags;

  LinkDetailsModel(
      {required this.link,
      required this.createdAt,
      this.description,
      this.tags})
      : super(
            link: link,
            createdAt: createdAt,
            description: description,
            tags: tags);
}
