import 'package:flutter/material.dart';
import 'package:mobilus_test/pages/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 60, 73, 177),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              margin: const EdgeInsets.all(20),
              height: 640,
              width: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 3.0,
                    color: Colors.white,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0))),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 60),
                    width: 200,
                    height: 16,
                    color: Colors.blue,
                    child: Center(
                      child: Container(
                        width: 30,
                        height: 16,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.orange,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 200,
                    height: 20,
                    color: Colors.black,
                  ),
                  Container(
                    width: 100,
                    height: 20,
                    color: Colors.black,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                    width: 180,
                    height: 20,
                    color: Colors.green,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 80),
                    width: 320,
                    height: 60,
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 60,
                          height: 80,
                          color: const Color.fromARGB(255, 100, 237, 255),
                        ),
                        Container(
                          width: 60,
                          height: 80,
                          color: const Color.fromARGB(255, 100, 237, 255),
                        ),
                        Container(
                          width: 60,
                          height: 80,
                          color: const Color.fromARGB(255, 100, 237, 255),
                        ),
                        Container(
                          width: 60,
                          height: 80,
                          color: const Color.fromARGB(255, 100, 237, 255),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.navigate_next,
                      size: 60.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Page2(),
                        ),
                      );
                    },
                  ),
                ],
              )),
        ],
      )),
    );
  }
}
