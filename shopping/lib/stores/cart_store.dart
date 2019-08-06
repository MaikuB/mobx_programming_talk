import 'package:mobx/mobx.dart';
import '../models/line_item.dart';
import '../models/product.dart';

part 'cart_store.g.dart';

class CartStore = CartStoreBase with _$CartStore;

abstract class CartStoreBase with Store {
  @observable
  ObservableList<LineItem> lineItems = ObservableList<LineItem>();

  @computed
  double get totalPrice => lineItems.isEmpty
      ? 0
      : lineItems.map((e) => e.subtotalPrice).reduce((p1, p2) => p1 + p2);

  @computed
  int get totalQuantity => lineItems.isEmpty
      ? 0
      : lineItems.map((e) => e.quantity).reduce((q1, q2) => q1 + q2);

  @action
  void add(Product product) {
    var index = lineItems.indexWhere((e) => e.product.id == product.id);
    if (index < 0) {
      lineItems.add(LineItem(product: product, quantity: 1));
      return;
    }

    increaseQuantity(lineItems[index]);
  }

  @action
  void increaseQuantity(LineItem cartEntry) {
    cartEntry.incrementQuantity();
  }

  @action
  void decreaseQuantity(LineItem cartEntry) {
    if (cartEntry.quantity > 1) {
      cartEntry.decrementQuantity();
      return;
    }

    lineItems.remove(cartEntry);
  }
}
