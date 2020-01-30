import 'package:architecture_test/count_repository.dart';
import 'package:architecture_test/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopPage3_0 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage3_0> {
  CounterBloc counterBloc;

  @override
  void initState() {
    super.initState();
    counterBloc = CounterBloc(CountRepository());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Simple Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _WidgetA(counterBloc),
          _WidgetB(),
          _WidgetC(counterBloc),
          LoadingWidget1(counterBloc.isLoading),
        ],
      ),
    );
  }

  @override
  void dispose() {
    counterBloc.dispose();
    super.dispose();
  }
}

class _WidgetA extends StatelessWidget {
  final CounterBloc counterBloc;

  _WidgetA(this.counterBloc);

  @override
  Widget build(BuildContext context) {
    print('called _WidgetA#build()');
    return Center(
      child: StreamBuilder(
        stream: counterBloc.value,
        builder: (context, snapshot) {
          return Text(
            '${snapshot.data}',
            style: Theme.of(context).textTheme.display1,
          );
        },
      ),
    );
  }
}

class _WidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('called _WidgetB#build()');
    return const Text('I am a widget that will not be rebuilt.');
  }
}

class _WidgetC extends StatelessWidget {
  final CounterBloc counterBloc;

  _WidgetC(this.counterBloc);

  @override
  Widget build(BuildContext context) {
    print('called _WidgetC#build()');
    return RaisedButton(
      onPressed: () {
        counterBloc.incrementCounter();
      },
      child: Icon(Icons.add),
    );
  }
}

class LoadingWidget1 extends StatelessWidget {
  final Stream stream;

  const LoadingWidget1(this.stream);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      initialData: false,
      stream: stream,
      builder: (context, snapshot) {
        return (snapshot.data)
            ? const DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0x44000000),
                ),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
