import 'package:architecture_test/top_page_3_0.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home page',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text("setStateの場合"),
            onTap: () {
              Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopPage3_0(),
                    fullscreenDialog: true,
                  ));
            },
          )
        ],
      ),
    );
  }
}
