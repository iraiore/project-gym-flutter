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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
          title: Column( children:[
            Text(exercicioModelo.nome, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Text(exercicioModelo.treino, style: const TextStyle(fontSize: 15),
            ),
          ]),
          //configurando a appBar
          centerTitle: true,//centralizando
          backgroundColor: Color.fromARGB(255, 219, 134, 7),//alterando a cor
          elevation: 0,//retirando a configurando de sombra
          toolbarHeight:72,//almentando o tamanho
          //arredondando as bordas
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(26),
              ),
            ),
        ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB foi clicado");
          },
          child: const Icon(Icons.add)),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        margin: EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Enviar foto")
                    ),
                  ElevatedButton(onPressed: (){}, child: const Text("Tirar foto"),),  
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Como Fazer (Execução)?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(exercicioModelo.comoFazer),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text(
              "Evolução dos pesos (carga)?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, //alinhando os elementos da coluna a esquerda

              //a propriedade do metodo list (generate) retorna uma lista a partir do segundo argumento. Não se sabe o tamanho da lista
              children: List.generate(listaEvolucaoPesos.length, (index) {
                EvolucaoPesos pesoAtual = listaEvolucaoPesos[
                    index]; //estanciando pesoAtual para retornar o peso mais recente da lista

                //returnando o Widget ListTile permite trazer as info da list e colocar alguns itens e interações
                return ListTile(
                  dense: true,//propriedade que compacta as info, pois elas podem ser maiores
                  contentPadding: EdgeInsets
                      .zero, //eliminando o padding que vem por default
                  title: Text(pesoAtual.peso),
                  subtitle: Text(pesoAtual.data),
                  leading: const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      print("Deletar ${pesoAtual.peso}");
                    },
                  ),
                );
              }),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              "Observação - Anotações?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, //alinhando os elementos da coluna a esquerda

              //a propriedade do método list (generate) retorna uma lista a partir do segundo argumento. Não se sabe o tamanho da lista
              children: List.generate(listaobsAnotacoes.length, (index) {
                obsAnotacoes obsAtual = listaobsAnotacoes[
                    index]; //estanciando pesoAtual para retornar o peso mais recente da lista
                return ListTile(
                  dense: true,//propriedade que compacta as info, pois elas podem ser maiores
                  contentPadding: EdgeInsets.zero,
                  title: Text(obsAtual.Anotacoes),
                  subtitle: Text(obsAtual.data),
                  leading: const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      print("Deletar ${obsAtual.Anotacoes}");
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
