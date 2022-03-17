import 'package:flutter/material.dart';
import 'package:mobilus_test/pages/page3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobilus teste',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page3(),
    );
  }
}
