import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.asset(
        product.imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(product.title, textAlign: TextAlign.center),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            // Add to cart logic here
          },
        ),
      ),
    );
  }
}


