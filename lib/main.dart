import 'package:flutter/material.dart';
import 'B.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          backgroundColor: Colors.green,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        ElevatedButton(
          child: const Icon(Icons.menu_book),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BPage())
            );
          },
        ),
        const Expanded(
          child: FittedBox(
            child: FlutterLogo(),
          ),
        ),
      ],
    );

  }
}
