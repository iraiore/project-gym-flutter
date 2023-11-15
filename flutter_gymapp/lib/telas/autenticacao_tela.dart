import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_comum/cores.dart';
import 'package:flutter_gymapp/_comum/snackbar.dart';
import 'package:flutter_gymapp/componentes/decoracao_campo_autenticacao.dart';
import 'package:flutter_gymapp/servicos/autenticacao_servico.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool entrar =
      true; // var boleana para implementar a logica do login ou cadastro
  final _formKey = GlobalKey<FormState>();

  //controlodadores de email, senha e nome
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();

  AutenticacaoServico _autenServico = AutenticacaoServico();

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
              key: _formKey, //Forms não tem controlles e sim chaves ou keys
              child: Center(
                child: SingleChildScrollView(
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
                        controller: _emailController,
                        decoration: getAuthenticationInputDecoration("E-mail"),
                        validator: (String? value) {
                          if (value == null) {
                            return "O e-mail não pode ser vazio";
                          }
                          if (value.length < 5) {
                            return "O e-mail é muito curto";
                          }
                          if (!value.contains("@")) {
                            return "O e-mail não é valido";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _senhaController,
                        decoration: getAuthenticationInputDecoration("Senha"),
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null) {
                            return "A senha não pode ser vazia";
                          }
                          if (value.length < 5) {
                            return "A senha é muito curta";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      /*const SizedBox(
                        height: 16,
                      ),*/
                      //widget para simular a alternância de tela entre a tela de login e cadastrar
                      Visibility(
                        visible: !entrar,
                        child: Column(
                          children: [
                            /*TextFormField(
                              decoration: getAuthenticationInputDecoration(
                                  "Confirme a Senha"),
                              obscureText: true,
                              validator: (String? value) {
                                if (value == null) {
                                  return "A confirmação de senha não pode ser vazia";
                                }
                                if (value.length < 5) {
                                  return "A confirmação de senha é muito curta";
                                }
                                return null;
                              },
                            ),*/
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _nomeController,
                              decoration:
                                  getAuthenticationInputDecoration("Nome"),
                              validator: (String? value) {
                                if (value == null) {
                                  return "O nome não pode ser vazio";
                                }
                                if (value.length < 5) {
                                  return "O nome é muito curto";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          btEntrarClick();
                        },
                        child: Text((entrar) ? "Entrar" : "Cadastrar"),
                      ),
                      const Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            entrar = !entrar;
                          });
                        },
                        child: Text((entrar)
                            ? "Ainda não tem uma conta? Cadastra-se Aqui!"
                            : "Já tem uma conta? Entre!"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //a funcao validate na funcao testa todos os validator que existe no codigo
  btEntrarClick() {
    String nome = _nomeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;
    if (_formKey.currentState!.validate()) {
      if (entrar) {
        print("Entrada validada");
        _autenServico
            .logarUsuarios(email: email, senha: senha)
            .then((String? erro) {
              if(erro != null){
                mostrarSnackbar(context: context, texto: erro);
              }
          },
        );
      } else {
        print("Cadastro validado");
        print(
            "${_emailController.text}, ${_senhaController}, ${_nomeController}");
        //verificando o resultado do teste do metodo.'.then(?String erro)'. Lógica para inplementação do Snackbar
        _autenServico
            .cadastrarUsuario(nome: nome, senha: senha, email: email)
            .then(
          (String? erro) {
            if (erro != null) {
              //voltou com erro
              mostrarSnackbar(context: context, texto: erro);
            } else {
              //Deu certo. obs: para mostrar o teste em verde 'isErro: false'
              mostrarSnackbar(
                  context: context,
                  texto: "Cadastro realizado com sucesso ;)",
                  isErro: false);
            }
          },
        );
      }
    } else {
      print("Form inválido");
    }
  }
}
