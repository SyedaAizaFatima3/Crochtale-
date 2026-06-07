import 'package:crochtale/models/product_model.dart';

class ProductService {
  static final ProductService _instance = ProductService._internal();

  factory ProductService() {
    return _instance;
  }

  ProductService._internal();

  final List<Product> _sellerProducts = [
    Product(
      id: '1',
      name: 'Handmade Amigurumi Teddy',
      description: 'Cute stuffed teddy bear made with soft yarn. Perfect for kids and decorations.',
      price: 25.99,
      sellerId: 'seller1',
      sellerName: 'Sarah\'s Crochet Studio',
      imageUrl: 'https://via.placeholder.com/300?text=Amigurumi+Teddy',
      quantity: 10,
      tags: ['amigurumi', 'teddy', 'handmade'],
      createdAt: DateTime.now(),
      rating: 4.8,
    ),
    Product(
      id: '2',
      name: 'Cozy Winter Blanket',
      description: 'Warm and soft crocheted blanket perfect for winters. Available in multiple colors.',
      price: 45.99,
      sellerId: 'seller1',
      sellerName: 'Sarah\'s Crochet Studio',
      imageUrl: 'https://via.placeholder.com/300?text=Winter+Blanket',
      quantity: 5,
      tags: ['blanket', 'winter', 'cozy'],
      createdAt: DateTime.now(),
      rating: 4.7,
    ),
    Product(
      id: '3',
      name: 'Colorful Striped Scarf',
      description: 'Beautiful multi-colored crochet scarf for all seasons. Handmade with love.',
      price: 19.99,
      sellerId: 'seller1',
      sellerName: 'Sarah\'s Crochet Studio',
      imageUrl: 'https://via.placeholder.com/300?text=Striped+Scarf',
      quantity: 15,
      tags: ['scarf', 'colorful', 'fashion'],
      createdAt: DateTime.now(),
      rating: 4.6,
    ),
    Product(
      id: '4',
      name: 'Baby Booties Set',
      description: 'Adorable crochet baby booties with cute patterns. Perfect for baby showers.',
      price: 18.99,
      sellerId: 'seller1',
      sellerName: 'Sarah\'s Crochet Studio',
      imageUrl: 'https://via.placeholder.com/300?text=Baby+Booties',
      quantity: 8,
      tags: ['baby', 'booties', 'gift'],
      createdAt: DateTime.now(),
      rating: 4.9,
    ),
    Product(
      id: '5',
      name: 'Flower Garden Headband',
      description: 'Delicate crochet headband with flower patterns. Perfect for festivals.',
      price: 14.99,
      sellerId: 'seller1',
      sellerName: 'Sarah\'s Crochet Studio',
      imageUrl: 'https://via.placeholder.com/300?text=Flower+Headband',
      quantity: 12,
      tags: ['headband', 'flowers', 'accessories'],
      createdAt: DateTime.now(),
      rating: 4.5,
    ),
    Product(
      id: '6',
      name: 'Decorative Wall Hanging',
      description: 'Artistic crochet wall decoration to brighten up your room. Eco-friendly materials.',
      price: 35.99,
      sellerId: 'seller1',
      sellerName: 'Sarah\'s Crochet Studio',
      imageUrl: 'https://via.placeholder.com/300?text=Wall+Hanging',
      quantity: 6,
      tags: ['decoration', 'wall art', 'home'],
      createdAt: DateTime.now(),
      rating: 4.7,
    ),
  ];

  final List<Product> _buyerProducts = [
    Product(
      id: '7',
      name: 'Premium Granny Square Blanket',
      description: 'Traditional granny square pattern in vibrant colors. Timeless design.',
      price: 55.99,
      sellerId: 'seller2',
      sellerName: 'Emma\'s Yarn Paradise',
      imageUrl: 'https://via.placeholder.com/300?text=Granny+Blanket',
      quantity: 4,
      tags: ['blanket', 'traditional', 'colorful'],
      createdAt: DateTime.now(),
      rating: 4.8,
    ),
    Product(
      id: '8',
      name: 'Fingerless Gloves Set',
      description: 'Warm fingerless gloves perfect for autumn. Multiple color options available.',
      price: 22.99,
      sellerId: 'seller2',
      sellerName: 'Emma\'s Yarn Paradise',
      imageUrl: 'https://via.placeholder.com/300?text=Fingerless+Gloves',
      quantity: 9,
      tags: ['gloves', 'winter', 'warm'],
      createdAt: DateTime.now(),
      rating: 4.6,
    ),
    Product(
      id: '9',
      name: 'Artistic Throw Pillow',
      description: 'Handmade crochet pillow with geometric patterns. Perfect for any room.',
      price: 32.99,
      sellerId: 'seller2',
      sellerName: 'Emma\'s Yarn Paradise',
      imageUrl: 'https://via.placeholder.com/300?text=Throw+Pillow',
      quantity: 7,
      tags: ['pillow', 'home', 'art'],
      createdAt: DateTime.now(),
      rating: 4.7,
    ),
    Product(
      id: '10',
      name: 'Cute Octopus Amigurumi',
      description: 'Adorable octopus toy crocheted with soft yarn. Great for collectors.',
      price: 28.99,
      sellerId: 'seller2',
      sellerName: 'Emma\'s Yarn Paradise',
      imageUrl: 'https://via.placeholder.com/300?text=Octopus+Toy',
      quantity: 11,
      tags: ['amigurumi', 'toy', 'cute'],
      createdAt: DateTime.now(),
      rating: 4.9,
    ),
    Product(
      id: '11',
      name: 'Bohemian Dream Catcher',
      description: 'Beautiful boho dream catcher made with crochet. Wall hanging with good vibes.',
      price: 42.99,
      sellerId: 'seller2',
      sellerName: 'Emma\'s Yarn Paradise',
      imageUrl: 'https://via.placeholder.com/300?text=Dream+Catcher',
      quantity: 5,
      tags: ['boho', 'decoration', 'dream'],
      createdAt: DateTime.now(),
      rating: 4.8,
    ),
    Product(
      id: '12',
      name: 'Classic Beanie Hat',
      description: 'Comfortable and stylish crochet beanie. Perfect for everyday wear.',
      price: 20.99,
      sellerId: 'seller2',
      sellerName: 'Emma\'s Yarn Paradise',
      imageUrl: 'https://via.placeholder.com/300?text=Beanie+Hat',
      quantity: 13,
      tags: ['hat', 'beanie', 'fashion'],
      createdAt: DateTime.now(),
      rating: 4.7,
    ),
  ];

  List<Product> getAllProducts() {
    return [..._sellerProducts, ..._buyerProducts];
  }

  List<Product> getSellerProducts() {
    return _sellerProducts;
  }

  List<Product> getBuyerAvailableProducts() {
    return _buyerProducts;
  }

  Product? getProductById(String id) {
    try {
      return getAllProducts().firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<bool> addProduct(Product product) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      _sellerProducts.add(product);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateProduct(Product product) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final index = _sellerProducts.indexWhere((p) => p.id == product.id);
      if (index != -1) {
        _sellerProducts[index] = product;
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteProduct(String productId) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      _sellerProducts.removeWhere((p) => p.id == productId);
      return true;
    } catch (e) {
      return false;
    }
  }
}