import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 800,
              height: 200,
              child: Image.asset('assets/img/umbrella_logo.png'),
            ),
            Column(
              children: [
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Usuário",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "Senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 40),
                  ),
                  onPressed: () => {},
                  child: const Text('Login'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 40),
                  ),
                  onPressed: () => {},
                  child: const Text('Forgot password?'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
