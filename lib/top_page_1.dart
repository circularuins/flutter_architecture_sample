import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _HomePage(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('InheritatedWidget Demo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _WidgetA(),
            _WidgetB(),
            _WidgetC(),
          ],
        ),
      ),
    );
  }
}

class _HomePage extends StatefulWidget {
  _HomePage({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<StatefulWidget> createState() => _HomePageState();

//  static _HomePageState of(BuildContext context, {bool rebuild = true}) {
//    if (rebuild) {
//      return (context.dependOnInheritedWidgetOfExactType<_MyInheritedWidget>())
//          .data;
//    }
//    return (context
//            .getElementForInheritedWidgetOfExactType<_MyInheritedWidget>()
//            .widget as _MyInheritedWidget)
//        .data;
//  }
  static _HomePageState of(BuildContext context, String aspect) {
    return InheritedModel.inheritFrom<_MyInheritedWidget>(context,
            aspect: aspect)
        .data;
  }
}

class _HomePageState extends State<_HomePage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _MyInheritedWidget(
      data: this,
      child: widget.child,
    );
  }
}

class _MyInheritedWidget extends InheritedModel<dynamic> {
  _MyInheritedWidget({
    Key key,
    @required Widget child,
    @required this.data,
  }) : super(key: key, child: child);

  final _HomePageState data;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  @override
  bool updateShouldNotifyDependent(InheritedModel oldWidget, Set dependencies) {
    return dependencies.contains('A');
  }
}

class _WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("called _WidgetA#build()");
    final _HomePageState state = _HomePage.of(context, 'A');

    return Center(
      child: Text(
        '${state.counter}',
        style: Theme.of(context).textTheme.display1,
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
  @override
  Widget build(BuildContext context) {
    print('called _WidgetC#build()');
    final _HomePageState state = _HomePage.of(context, 'A');
    return RaisedButton(
      onPressed: () {
        state._incrementCounter();
      },
      child: Icon(Icons.add),
    );
  }
}
