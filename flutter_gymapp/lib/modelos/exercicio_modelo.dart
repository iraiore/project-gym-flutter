// classe modelo para estanciar objetos, pegar dados do BD ou enviar os dados para o BD

//atributos
class ExercicioModelo {
  String id;
  String nome;
  String treino;
  String comoFazer;
  String? urlImagem;

  //construtor padrão que inicializa os atributos
  ExercicioModelo({
    required this.id,
    required this.nome,
    required this.treino,
    required this.comoFazer,
  });

  //construtor nomeado para informações extraidas do BD
  ExercicioModelo.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        nome = map["nome"],
        treino = map["treino"],
        comoFazer = map["comoFazer"],
        urlImagem = map["urlImagem"];

  //metodo toMap para enviar os dados para o BD
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "treino": treino,
      "comoFazer": comoFazer,
      "urlImagem": urlImagem,
    };
  }
}
