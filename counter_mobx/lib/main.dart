import 'package:flutter/material.dart';
import 'package:counter_mobx/pages/counter_page.dart';
import 'package:provider/provider.dart';

import 'stores/counter_store.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<CounterStore>(
      builder: (_) => CounterStore(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CounterPage(),
      ),
    );
  }
}
