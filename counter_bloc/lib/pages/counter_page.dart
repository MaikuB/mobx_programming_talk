import 'package:counter_bloc/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterBloc>(
      builder: (_, counterBloc, __) {
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
                  stream: counterBloc.stream,
                  builder: (context, snapshot) {
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
            onPressed: counterBloc.increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
