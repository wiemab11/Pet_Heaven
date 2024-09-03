import 'dart:convert';

class Product {
  final String id;
  final String title;
  final String description;
  final List<String> categories;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.categories,
    required this.price,
    required this.imageUrl,
  });

  // Convert a Product into a Map. The keys must correspond to the names of the fields in the JSON.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'categories': categories,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  // Extract a Product object from a Map.
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      categories: List<String>.from(map['categories'] ?? []),
      price: map['price']?.toDouble() ?? 0.0,
      imageUrl: map['imageUrl'] ?? '',
    );
  }

  // Convert a Product into a JSON string.
  String toJson() => json.encode(toMap());

  // Extract a Product object from a JSON string.
  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));
}
