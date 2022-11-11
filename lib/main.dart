import 'package:flutter/material.dart';
import 'B.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.pinkAccent,
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
      padding: const EdgeInsets.all(30),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        ElevatedButton(
          child: const Icon(Icons.photo_library),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BPage())
            );
          },
        ),
      ],
    );

  }
}
