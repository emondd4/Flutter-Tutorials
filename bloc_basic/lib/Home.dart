import 'package:bloc_basic/CounterBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, int>(
            builder: (BuildContext context, int state) {
              return Text("Counter Value: $state");
            },
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  _counterBloc.add(CounterEvents.increase);
                },
                child: Text('increase'),
              ),
              RaisedButton(
                onPressed: () {
                  _counterBloc.add(CounterEvents.decrease);
                },
                child: Text('decrease'),
              )
            ],
          )
        ],
      ),
    );
  }
}
