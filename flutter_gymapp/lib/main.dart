import 'package:flutter/material.dart';
import 'package:flutter_gymapp/telas/autenticacao_tela.dart';
import 'package:flutter_gymapp/telas/exercicio_tela.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_gymapp/telas/tela_inicial.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //único método
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RoteTela(),
    );
  }
}

//Será utilizado para alternar entre as telas inicial e de login (Tela inicial quando o usuario estiver logado e tela de login para quando o usario não estiver logado)
class RoteTela extends StatelessWidget {
  const RoteTela({super.key});

  @override
  Widget build(BuildContext context) {//notes.md
    return StreamBuilder<User?>(stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData){//verificando se existe dados no usuário
          //se o retorno do snapshot nao for vazio o usário esta logado
          return InicioTela();
        }else{
          return AutenticacaoTela();
        }
      },
    );
  }
}
