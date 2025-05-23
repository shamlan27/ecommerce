// providers/product_provider.dart
import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Woollen Kurta',
      description: 'Comfortable and warm woollen kurta perfect for Diwali.',
      price: 1299.99,
      imageUrl: 'assets/dress1.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Festive Lehenga',
      description: 'Bright colored lehenga for festive occasions.',
      price: 2499.50,
      imageUrl: 'assets/dress2.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Diwali Sherwani',
      description: 'Elegant sherwani with embroidered patterns.',
      price: 2999.00,
      imageUrl: 'assets/dress3.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Winter Saree',
      description: 'Woollen blend saree to keep you warm and stylish.',
      price: 1899.75,
      imageUrl: 'assets/dress4.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Woollen Salwar Suit',
      description: 'Stylish and comfortable salwar suit for Diwali.',
      price: 1599.99,
      imageUrl: 'assets/dress5.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
