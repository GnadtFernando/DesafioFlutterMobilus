import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Page 3',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
