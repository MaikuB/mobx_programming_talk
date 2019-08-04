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

  final _$cartEntriesAtom = Atom(name: 'CartStoreBase.cartEntries');

  @override
  ObservableList<LineItem> get cartEntries {
    _$cartEntriesAtom.context.enforceReadPolicy(_$cartEntriesAtom);
    _$cartEntriesAtom.reportObserved();
    return super.cartEntries;
  }

  @override
  set cartEntries(ObservableList<LineItem> value) {
    _$cartEntriesAtom.context.conditionallyRunInAction(() {
      super.cartEntries = value;
      _$cartEntriesAtom.reportChanged();
    }, _$cartEntriesAtom, name: '${_$cartEntriesAtom.name}_set');
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
