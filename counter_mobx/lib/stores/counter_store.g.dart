// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$CounterStore on CounterStoreBase, Store {
  final _$counterAtom = Atom(name: 'CounterStoreBase.counter');

  @override
  int get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$xAtom = Atom(name: 'CounterStoreBase.x');

  @override
  int get x {
    _$xAtom.context.enforceReadPolicy(_$xAtom);
    _$xAtom.reportObserved();
    return super.x;
  }

  @override
  set x(int value) {
    _$xAtom.context.conditionallyRunInAction(() {
      super.x = value;
      _$xAtom.reportChanged();
    }, _$xAtom, name: '${_$xAtom.name}_set');
  }

  final _$CounterStoreBaseActionController =
      ActionController(name: 'CounterStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$CounterStoreBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
