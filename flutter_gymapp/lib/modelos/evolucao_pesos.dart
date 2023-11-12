class EvolucaoPesos {
  String id;
  String peso;
  String data;

  EvolucaoPesos({
    required this.id,
    required this.peso,
    required this.data,
  });

  EvolucaoPesos.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        peso = map["peso"],
        data = map["data"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "peso": peso,
      "data": data,
    };
  }
}
