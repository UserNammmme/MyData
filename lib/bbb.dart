import 'package:flutter/material.dart';
// import 'package:flutterrestapicallsample/home.dart';
//
import 'Product.dart';
import 'aaa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
