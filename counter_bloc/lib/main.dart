import 'package:counter_bloc/blocs/counter_bloc.dart';
import 'package:counter_bloc/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<CounterBloc>(
      builder: (_) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CounterPage(),
      ),
      dispose: (_, counterBloc) {
        counterBloc.dispose();
      },
    );
  }
}
