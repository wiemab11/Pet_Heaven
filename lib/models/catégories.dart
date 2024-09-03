import 'dart:convert';

class Category {
  final String id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  // Convert a Category into a Map. The keys must correspond to the names of the fields in the JSON.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  // Extract a Category object from a Map.
  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
    );
  }

  // Convert a Category into a JSON string.
  String toJson() => json.encode(toMap());

  // Extract a Category object from a JSON string.
  factory Category.fromJson(String source) => Category.fromMap(json.decode(source));
}
