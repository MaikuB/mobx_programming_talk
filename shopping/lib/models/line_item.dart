import 'package:meta/meta.dart';
import 'package:mobx/mobx.dart';
import 'product.dart';

part 'line_item.g.dart';

class LineItem = LineItemBase with _$LineItem;

abstract class LineItemBase with Store {
  Product product;

  @observable
  int quantity;

  double get subtotalPrice => product.price * quantity;

  LineItemBase({@required this.product, this.quantity: 0});

  @action
  void incrementQuantity() {
    quantity++;
  }

  @action
  void decrementQuantity() {
    quantity--;
  }
}
