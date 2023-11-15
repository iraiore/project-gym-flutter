import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AutenticacaoServico {
  FirebaseAuth _firebaseAuth =
      FirebaseAuth.instance; //instancia do firebase para fazer a comunicação

  //método para cadastrar o usuário
  Future<String?> cadastrarUsuario({
    required String nome,
    required String senha,
    required String email,
  }) async {
    //usando o try cath para tratar o erro de email duplamente cadastrado. Se o cadastro estiver ok, não faz nada
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );

      await userCredential.user!.updateDisplayName(nome);

      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return "Email já cadastrado :(";
      }
      return "Erro desconhecido!";
    }
//utilizando o nome
  }
}
