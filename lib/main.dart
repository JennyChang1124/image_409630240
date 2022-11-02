import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = '瀏覽照片';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}
/// stateless widget that the main application instantiates
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        const SizedBox(height: 30),
    const SizedBox(height: 10),
    Column(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FloatingActionButton(
        onPressed: (){},
        child:const Icon(Icons.keyboard_arrow_left),
      ),
      FloatingActionButton(
        onPressed: (){},
        child:const Icon(Icons.keyboard_arrow_right),
      ),
    ]
    ),
      ]
    ),
    );
  }
}
