// screens/cart_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: TextStyle(fontSize: 20)),
                  Spacer(),
                  Chip(label: Text('\$${cart.totalAmount.toStringAsFixed(2)}')),
                  TextButton(
                    child: Text('ORDER NOW'),
                    onPressed: () {
                      // Order logic here
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: cart.items.entries.map((entry) {
                return ListTile(
                  title: Text(entry.value.title),
                  subtitle: Text('Quantity: ${entry.value.quantity}'),
                  trailing: Text('\$${(entry.value.price * entry.value.quantity).toStringAsFixed(2)}'),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

