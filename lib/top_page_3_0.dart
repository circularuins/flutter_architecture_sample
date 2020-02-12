import 'package:architecture_test/remote_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopPage3_0 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage3_0> {
  //CounterBloc counterBloc;
  RemoteBloc remoteBloc;

  @override
  void initState() {
    super.initState();
    //counterBloc = CounterBloc(CountRepository());
    remoteBloc = RemoteBloc();
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
          _WidgetA(remoteBloc),
//          _WidgetB(),
          _WidgetC(remoteBloc),
//          LoadingWidget1(counterBloc.isLoading),
        ],
      ),
    );
  }

  @override
  void dispose() {
    //counterBloc.dispose();
    super.dispose();
  }
}

class _WidgetA extends StatelessWidget {
  //final CounterBloc counterBloc;
  final RemoteBloc remoteBloc;

  _WidgetA(this.remoteBloc);

  @override
  Widget build(BuildContext context) {
    print('called _WidgetA#build()');
    return Center(
      child: StreamBuilder(
        stream: remoteBloc.value,
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
  //final CounterBloc counterBloc;
  final RemoteBloc remoteBloc;

  _WidgetC(this.remoteBloc);

  @override
  Widget build(BuildContext context) {
    print('called _WidgetC#build()');
    return RaisedButton(
      onPressed: () {
        //counterBloc.incrementCounter();
        remoteBloc.getData();
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
