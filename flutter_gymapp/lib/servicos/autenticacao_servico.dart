import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AutenticacaoServico {
  FirebaseAuth _firebaseAuth =
      FirebaseAuth.instance; //instancia do firebase para fazer a comunicação

  cadastrarUsuario({
    required String nome,
    required String senha,
    required String email,
  }) async {
    //usando o try cath para tratar o erro de email duplamente cadastrado
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );

      await userCredential.user!.updateDisplayName(nome);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        print("Email já cadastrado!");
      }
    }
//utilizando o nome
  }
}
