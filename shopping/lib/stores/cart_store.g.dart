// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$CartStore on CartStoreBase, Store {
  Computed<double> _$totalPriceComputed;

  @override
  double get totalPrice =>
      (_$totalPriceComputed ??= Computed<double>(() => super.totalPrice)).value;
  Computed<int> _$totalQuantityComputed;

  @override
  int get totalQuantity =>
      (_$totalQuantityComputed ??= Computed<int>(() => super.totalQuantity))
          .value;

  final _$lineItemsAtom = Atom(name: 'CartStoreBase.lineItems');

  @override
  ObservableList<LineItem> get lineItems {
    _$lineItemsAtom.context.enforceReadPolicy(_$lineItemsAtom);
    _$lineItemsAtom.reportObserved();
    return super.lineItems;
  }

  @override
  set lineItems(ObservableList<LineItem> value) {
    _$lineItemsAtom.context.conditionallyRunInAction(() {
      super.lineItems = value;
      _$lineItemsAtom.reportChanged();
    }, _$lineItemsAtom, name: '${_$lineItemsAtom.name}_set');
  }

  final _$CartStoreBaseActionController =
      ActionController(name: 'CartStoreBase');

  @override
  void add(Product product) {
    final _$actionInfo = _$CartStoreBaseActionController.startAction();
    try {
      return super.add(product);
    } finally {
      _$CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseQuantity(LineItem cartEntry) {
    final _$actionInfo = _$CartStoreBaseActionController.startAction();
    try {
      return super.increaseQuantity(cartEntry);
    } finally {
      _$CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseQuantity(LineItem cartEntry) {
    final _$actionInfo = _$CartStoreBaseActionController.startAction();
    try {
      return super.decreaseQuantity(cartEntry);
    } finally {
      _$CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
