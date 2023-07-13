class Tag {
  final String name;

  const Tag({required this.name});

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is Tag && name != other.name) return false;
    return true;
  }
  
  @override
  int get hashCode => Object.hash(super.hashCode, name);
}