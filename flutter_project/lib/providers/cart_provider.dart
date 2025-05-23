// providers/cart_provider.dart
import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({required this.id, required this.title, required this.quantity, required this.price});
}

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => {..._items};

  void addItem(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existing) => CartItem(
          id: existing.id,
          title: existing.title,
          quantity: existing.quantity + 1,
          price: existing.price,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(id: DateTime.now().toString(), title: title, quantity: 1, price: price),
      );
    }
    notifyListeners();
  }

  double get totalAmount {
    return _items.values.fold(0.0, (sum, item) => sum + (item.price * item.quantity));
  }
}
