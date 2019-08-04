import 'package:flutter/material.dart';
import '../models/line_item.dart';
import '../stores/cart_store.dart';

class LineItemWidget extends StatelessWidget {
  const LineItemWidget({
    @required this.cartEntry,
    @required this.store,
    Key key,
  }) : super(key: key);

  final LineItem cartEntry;
  final CartStore store;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
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
                  child: Text(cartEntry.product.name),
                ),
                Text('\$${cartEntry.product.price.toStringAsFixed(2)}'),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                store.decreaseQuantity(cartEntry);
              },
            ),
            Text('Quantity: ${cartEntry.quantity}'),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                store.increaseQuantity(cartEntry);
              },
            ),
          ],
        ),
      ],
    );
  }
}
