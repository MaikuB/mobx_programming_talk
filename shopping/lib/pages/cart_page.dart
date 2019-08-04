import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../stores/cart_store.dart';
import '../widgets/line_item_widget.dart';

class CartPage extends StatelessWidget {
  final CartStore store;

  const CartPage({Key key, @required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: SafeArea(
        child: Observer(
          builder: (_) {
            return Column(
              children: [
                Expanded(
                  child: store.cartEntries.isEmpty
                      ? Center(
                          child: Text('Your cart is empty'),
                        )
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            return LineItemWidget(
                                cartEntry: store.cartEntries[index],
                                store: store);
                          },
                          itemCount: store.cartEntries.length,
                        ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Text('Total: \$${store.totalPrice.toStringAsFixed(2)}'),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
