import 'package:rxdart/rxdart.dart';

class CounterBloc {
  BehaviorSubject<int> _counterSubject = BehaviorSubject<int>.seeded(0);
  Observable<int> get stream => _counterSubject.stream;
  int get _counter => _counterSubject.value;

  void increment() {
    _counterSubject.add(_counter + 1);
  }

  void dispose() {
    _counterSubject.close();
  }
}
