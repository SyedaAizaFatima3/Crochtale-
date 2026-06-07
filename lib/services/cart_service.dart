import 'package:crochtale/models/cart_item_model.dart';
import 'package:crochtale/models/product_model.dart';

class CartService {
  static final CartService _instance = CartService._internal();

  factory CartService() {
    return _instance;
  }

  CartService._internal();

  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  int get cartCount => _cartItems.length;

  double get totalPrice {
    return _cartItems.fold(0, (sum, item) => sum + item.totalPrice);
  }

  void addToCart(Product product) {
    final existingItem = _cartItems.firstWhere(
      (item) => item.product.id == product.id,
      orElse: () => CartItem(product: product),
    );

    if (_cartItems.contains(existingItem)) {
      existingItem.quantity++;
    } else {
      _cartItems.add(CartItem(product: product));
    }
  }

  void removeFromCart(String productId) {
    _cartItems.removeWhere((item) => item.product.id == productId);
  }

  void updateQuantity(String productId, int quantity) {
    final item = _cartItems.firstWhere((item) => item.product.id == productId);
    if (quantity <= 0) {
      removeFromCart(productId);
    } else {
      item.quantity = quantity;
    }
  }

  void clearCart() {
    _cartItems.clear();
  }

  bool isInCart(String productId) {
    return _cartItems.any((item) => item.product.id == productId);
  }
}