class User {
  final String id;
  final String email;
  final String name;
  final String userType; // 'seller' or 'buyer'
  final String? profileImage;
  final DateTime createdAt;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.userType,
    this.profileImage,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'userType': userType,
      'profileImage': profileImage,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      userType: json['userType'],
      profileImage: json['profileImage'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}