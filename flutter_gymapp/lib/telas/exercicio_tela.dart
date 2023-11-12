import 'package:flutter/material.dart';
import 'package:flutter_gymapp/modelos/evolucao_pesos.dart';
import 'package:flutter_gymapp/modelos/exercicio_modelo.dart';
import 'package:flutter_gymapp/modelos/observacao_anotacoes.dart';

class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});

  final ExercicioModelo exercicioModelo = ExercicioModelo(
      id: "ex01",
      nome: "Crossover sentado",
      treino: "Treino A",
      comoFazer: "Senta na máquina e voa mlk");
  final List<EvolucaoPesos> listaEvolucaoPesos = [
    EvolucaoPesos(
      id: "p001",
      peso: "20kg",
      data: "2023-11-12",
    ),
    EvolucaoPesos(
      id: "p002",
      peso: "10kg",
      data: "2023-15-12",
    ),
    EvolucaoPesos(
      id: "p003",
      peso: "15kg",
      data: "2023-18-12",
    ),
    EvolucaoPesos(
      id: "p004",
      peso: "15kg",
      data: "2023-18-12",
    ),
    EvolucaoPesos(
      id: "p005",
      peso: "15kg",
      data: "2023-18-12",
    ),
    EvolucaoPesos(
      id: "p006",
      peso: "15kg",
      data: "2023-18-12",
    ),
    EvolucaoPesos(
      id: "p007",
      peso: "15kg",
      data: "2023-18-12",
    ),
  ];
  final List<obsAnotacoes> listaobsAnotacoes = [
    obsAnotacoes(
      id: "A001",
      Anotacoes: "não senti nada",
      data: "2023-11-12",
    ),
    obsAnotacoes(
      id: "A002",
      Anotacoes: "estender mais o movimento",
      data: "2023-15-12",
    ),
    obsAnotacoes(
      id: "A003",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A004",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A005",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A006",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
    obsAnotacoes(
      id: "A007",
      Anotacoes: "segurar o peso no movimento negativo",
      data: "2023-18-12",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "${exercicioModelo.nome} - ${exercicioModelo.treino}")), //interpolação - melhor que concatenar
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB foi clicado");
          },
          child: const Icon(Icons.add)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Enviar foto")),
            const Text(
              "Como Fazer (Execução)?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(exercicioModelo.comoFazer),
            const Divider(),
            const Text(
              "Evolução dos pesos (carga)?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, //alinhando os elementos da coluna a esquerda

              //a propriedade do metodo list (generate) retorna uma lista a partir do segundo argumento. Não se sabe o tamanho da lista
              children: List.generate(listaEvolucaoPesos.length, (index) {
                EvolucaoPesos pesoAtual = listaEvolucaoPesos[
                    index]; //estanciando pesoAtual para retornar o peso mais recente da lista
                return Text(pesoAtual.peso);
              }),
            ),
            const Divider(),
            const Text(
              "Observação - Anotações?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, //alinhando os elementos da coluna a esquerda

              //a propriedade do metodo list (generate) retorna uma lista a partir do segundo argumento. Não se sabe o tamanho da lista
              children: List.generate(listaobsAnotacoes.length, (index) {
                obsAnotacoes obsAtual = listaobsAnotacoes[
                    index]; //estanciando pesoAtual para retornar o peso mais recente da lista
                return Text(obsAtual.Anotacoes);
              }),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
