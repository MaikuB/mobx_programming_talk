import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants/routes.dart';
import 'pages/cart_page.dart';
import 'pages/catalogue_page.dart';
import 'services/catalogue_service.dart';
import 'stores/catalogue_store.dart';
import 'stores/cart_store.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CatalogueService>(
          builder: (_) => CatalogueService(),
        ),
        ProxyProvider<CatalogueService, CatalogueStore>(
          builder: (_, catalogueService, __) =>
              CatalogueStore(catalogueService),
        ),
        Provider<CartStore>(
          builder: (_) => CartStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Routes.catalogue,
        routes: {
          Routes.cart: (_) {
            return Consumer<CartStore>(
              builder: (_, store, __) {
                return CartPage(store: store);
              },
            );
          },
          Routes.catalogue: (_) {
            return Consumer2<CatalogueStore, CartStore>(
              builder: (_, catalogueStore, cartStore, __) {
                return CataloguePage(
                    catalogueStore: catalogueStore, cartStore: cartStore);
              },
            );
          },
        },
      ),
    );
  }
}
