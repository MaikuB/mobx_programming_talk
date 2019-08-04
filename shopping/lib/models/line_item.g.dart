// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$LineItem on LineItemBase, Store {
  final _$quantityAtom = Atom(name: 'LineItemBase.quantity');

  @override
  int get quantity {
    _$quantityAtom.context.enforceReadPolicy(_$quantityAtom);
    _$quantityAtom.reportObserved();
    return super.quantity;
  }

  @override
  set quantity(int value) {
    _$quantityAtom.context.conditionallyRunInAction(() {
      super.quantity = value;
      _$quantityAtom.reportChanged();
    }, _$quantityAtom, name: '${_$quantityAtom.name}_set');
  }

  final _$LineItemBaseActionController = ActionController(name: 'LineItemBase');

  @override
  void incrementQuantity() {
    final _$actionInfo = _$LineItemBaseActionController.startAction();
    try {
      return super.incrementQuantity();
    } finally {
      _$LineItemBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementQuantity() {
    final _$actionInfo = _$LineItemBaseActionController.startAction();
    try {
      return super.decrementQuantity();
    } finally {
      _$LineItemBaseActionController.endAction(_$actionInfo);
    }
  }
}
