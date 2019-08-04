import 'package:flutter/material.dart';
import '../models/product.dart';
import '../stores/cart_store.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    @required this.product,
    @required this.cartStore,
    Key key,
  }) : super(key: key);

  final Product product;
  final CartStore cartStore;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Text(product.name),
            ),
            IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                cartStore.add(product);
              },
            ),
          ],
        ),
      ),
    );
  }
}
