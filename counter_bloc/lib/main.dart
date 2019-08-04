import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'blocs/counter_bloc.dart';
import 'pages/counter_page.dart';

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
        home: Consumer<CounterBloc>(
          builder: (_, bloc, __) {
            return CounterPage(bloc);
          },
        ),
      ),
      dispose: (_, counterBloc) {
        counterBloc.dispose();
      },
    );
  }
}
