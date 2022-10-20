class Food {
  final int id;
  final String name;

  Food(this.id, this.name);

  factory Food.fromJson(Map<String, dynamic> user) {
    return Food(user['id'], user['name']);
  }
}
