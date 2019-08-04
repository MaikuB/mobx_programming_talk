import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import '../constants/routes.dart';
import '../stores/cart_store.dart';
import '../stores/catalogue_store.dart';
import '../widgets/product_widget.dart';

class CataloguePage extends StatelessWidget {
  final CatalogueStore catalogueStore;
  final CartStore cartStore;

  const CataloguePage(
      {@required this.catalogueStore, @required this.cartStore, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    catalogueStore.getProducts();
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalogue'),
        actions: [
          IconButton(
            icon: Badge(
              badgeContent: Observer(
                builder: (_) => Text(
                  cartStore.totalQuantity.toString(),
                ),
              ),
              child: Icon(Icons.shopping_cart),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.cart);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Observer(
          builder: (_) {
            switch (catalogueStore.productsFuture.status) {
              case FutureStatus.pending:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case FutureStatus.rejected:
                return Center(
                  child: Text('Failed to load catalogue'),
                );
              case FutureStatus.fulfilled:
                if (catalogueStore.productsFuture.value?.isEmpty ?? false) {
                  return Text('No products in the catalogue');
                }

                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ProductWidget(
                        product: catalogueStore.products[index],
                        cartStore: cartStore);
                  },
                  itemCount: catalogueStore.products.length,
                );
            }
            return null;
          },
        ),
      ),
    );
  }
}
