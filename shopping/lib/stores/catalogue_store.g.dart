// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogue_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$CatalogueStore on CatalogueStoreBase, Store {
  final _$productsFutureAtom = Atom(name: 'CatalogueStoreBase.productsFuture');

  @override
  ObservableFuture get productsFuture {
    _$productsFutureAtom.context.enforceReadPolicy(_$productsFutureAtom);
    _$productsFutureAtom.reportObserved();
    return super.productsFuture;
  }

  @override
  set productsFuture(ObservableFuture value) {
    _$productsFutureAtom.context.conditionallyRunInAction(() {
      super.productsFuture = value;
      _$productsFutureAtom.reportChanged();
    }, _$productsFutureAtom, name: '${_$productsFutureAtom.name}_set');
  }

  final _$productsAtom = Atom(name: 'CatalogueStoreBase.products');

  @override
  List<Product> get products {
    _$productsAtom.context.enforceReadPolicy(_$productsAtom);
    _$productsAtom.reportObserved();
    return super.products;
  }

  @override
  set products(List<Product> value) {
    _$productsAtom.context.conditionallyRunInAction(() {
      super.products = value;
      _$productsAtom.reportChanged();
    }, _$productsAtom, name: '${_$productsAtom.name}_set');
  }

  final _$_populateProductsAsyncAction = AsyncAction('_populateProducts');

  @override
  Future<dynamic> _populateProducts() {
    return _$_populateProductsAsyncAction.run(() => super._populateProducts());
  }

  final _$CatalogueStoreBaseActionController =
      ActionController(name: 'CatalogueStoreBase');

  @override
  void getProducts() {
    final _$actionInfo = _$CatalogueStoreBaseActionController.startAction();
    try {
      return super.getProducts();
    } finally {
      _$CatalogueStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
