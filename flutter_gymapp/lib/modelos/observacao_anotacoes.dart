class obsAnotacoes {
  String id;
  String Anotacoes;
  String data;

  obsAnotacoes({
    required this.id,
    required this.Anotacoes,
    required this.data,
  });

  obsAnotacoes.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        Anotacoes = map["Anotacoes"],
        data = map["data"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "peso": Anotacoes,
      "data": data,
    };
  }
}
