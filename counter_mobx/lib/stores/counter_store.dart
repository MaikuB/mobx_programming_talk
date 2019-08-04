import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class CounterStore = CounterStoreBase with _$CounterStore;

abstract class CounterStoreBase with Store {
  @observable
  int counter = 0;

  @observable
  int x = 0;

  @action
  void increment() {
    counter++;
    // used to demonstrate Observer widget tracks observables
    // x++;
  }
}
