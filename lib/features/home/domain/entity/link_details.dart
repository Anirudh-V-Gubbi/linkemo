import 'package:linkemo/features/home/domain/entity/tag.dart';

class LinkDetails {
  final String link;
  final DateTime createdAt;
  final String? description;
  final List<Tag>? tags;

  LinkDetails({required this.link, required this.createdAt, this.description, this.tags});
}