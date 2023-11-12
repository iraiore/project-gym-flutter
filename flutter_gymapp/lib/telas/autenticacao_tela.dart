import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_comum/cores.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool entrar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        //o Stack empilha em profundidade os widget sobrepondo os mesmo de acordo com sequencia que é colocado
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MinhasCores.laranjaGradiente2,
                  MinhasCores.laranjaGradiente1,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment
                    .stretch, //alinhando a imagem no centro em relação a widget pai (no caso o Scaffold)
                children: [
                  Image.asset(
                    "assets/logo-fitness.png",
                    height: 128,
                  ),
                  const Text(
                    "GymApp",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("E-mail"),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Senha"),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text((entrar)? "Entrar" : "Cadastrar"),
                  ),
                  Divider(),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          entrar = !entrar;
                        });
                      },
                      child: Text((entrar)? "Ainda não tem uma conta? Cadastra-se Aqui!" : "Já tem uma conta? Entre!"),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
