import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/counter_view_model.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterViewModel>(
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
                Consumer<CounterViewModel>(
                  builder: (context, viewmodel, _) {
                    return Text(
                      '${viewmodel.counter}',
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
