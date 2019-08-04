import 'package:flutter/material.dart';
import '../blocs/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  final CounterBloc bloc;

  const CounterPage({@required this.bloc, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('built scaffold');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder<int>(
              stream: bloc.stream,
              builder: (context, snapshot) {
                debugPrint('built counter text');
                return Text(
                  '${(snapshot.hasData ? snapshot.data : 0)}',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: bloc.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
