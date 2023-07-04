class LinkDetails {
  final String link;
  final DateTime createdAt;
  final String? description;
  final List<String>? tags;

  LinkDetails({required this.link, required this.createdAt, this.description, this.tags});
}