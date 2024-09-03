import 'dart:convert';

class User {
  final String id;
  final String username;
  final String email;
  final String password; // Consider using a hashed password for security
  final String? profileImageUrl;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    this.profileImageUrl,
  });

  // Convert a User into a Map. The keys must correspond to the names of the fields in the JSON.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
      'profileImageUrl': profileImageUrl,
    };
  }

  // Extract a User object from a Map.
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      profileImageUrl: map['profileImageUrl'],
    );
  }

  // Convert a User into a JSON string.
  String toJson() => json.encode(toMap());

  // Extract a User object from a JSON string.
  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
