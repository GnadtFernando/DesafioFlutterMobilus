import 'package:flutter/material.dart';

import '../utils/view_utils.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 800,
                height: 200,
                child: Image.asset('assets/img/umbrella_logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "Usuário",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (text) {
                        senha = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Senha",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 40),
                    ),
                    onPressed: () => {
                      if (email == 'leon@re4.com' && senha == 'senha#1234')
                        {
                          ViewUtils.showMessage(context, "Logado com sucesso"),
                        }
                      else
                        {
                          ViewUtils.showMessage(context, "Dados inválidos"),
                        },
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 40),
                    ),
                    onPressed: () => {
                      {
                        ViewUtils.showMessage(context,
                            "Enviamos a recuperação para sua caixa de e-mail"),
                      },
                    },
                    child: const Text('Forgot password?'),
                  ),
                ],
              ),
              IconButton(
                onPressed: () => {Navigator.pop(context)},
                icon: const Icon(
                  Icons.navigate_before,
                  size: 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
