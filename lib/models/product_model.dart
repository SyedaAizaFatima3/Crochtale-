class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String sellerId;
  final String sellerName;
  final String imageUrl;
  final int quantity;
  final List<String> tags;
  final DateTime createdAt;
  final double rating;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.sellerId,
    required this.sellerName,
    required this.imageUrl,
    required this.quantity,
    required this.tags,
    required this.createdAt,
    this.rating = 4.5,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'sellerId': sellerId,
      'sellerName': sellerName,
      'imageUrl': imageUrl,
      'quantity': quantity,
      'tags': tags,
      'createdAt': createdAt.toIso8601String(),
      'rating': rating,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      sellerId: json['sellerId'],
      sellerName: json['sellerName'],
      imageUrl: json['imageUrl'],
      quantity: json['quantity'],
      tags: List<String>.from(json['tags'] ?? []),
      createdAt: DateTime.parse(json['createdAt']),
      rating: json['rating'] ?? 4.5,
    );
  }
}