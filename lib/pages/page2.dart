import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobilus_test/pages/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 800,
                    height: 60,
                    child: Image.asset('assets/img/logo_detodos_cartão.png'),
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/img/diana.jpeg'),
                    radius: 80,
                  ),
                  Column(children: const [
                    Text(
                      'Diana Gnadt',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    Text(
                      'Cão guia',
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      primary: Colors.green,
                      fixedSize: const Size(300, 40),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      'WhatsApp',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.phone,
                        size: 32.0,
                      ),
                      Icon(
                        Icons.email,
                        size: 32.0,
                      ),
                      Icon(
                        FontAwesomeIcons.facebook,
                        size: 32.0,
                      ),
                      Icon(
                        FontAwesomeIcons.instagram,
                        size: 32.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => {Navigator.pop(context)},
                        icon: const Icon(
                          Icons.navigate_before,
                          size: 60,
                        ),
                      ),
                      IconButton(
                        onPressed: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page3()))
                        },
                        icon: const Icon(
                          Icons.navigate_next,
                          size: 60.0,
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ],
      )),
    );
  }
}
