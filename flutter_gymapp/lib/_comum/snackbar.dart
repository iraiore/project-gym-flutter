import "package:flutter/material.dart";

//metodo para mostrar o SnackBar

//Criando o Snackbar
mostrarSnackbar(
    {required BuildContext context,
    required String texto,
    bool isErro = true}) {
  SnackBar snackBar = SnackBar(
    content: Text(texto), backgroundColor: (isErro) ? Colors.red : Colors.green,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
    duration: const Duration(seconds: 5),
    //interação com o snackbar
    action: SnackBarAction(
      label: "Ok",
      textColor: Colors.white,
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();//recolhendo a snackbar
      },
    ),
  );

  //Mostrando o Snackbar criado
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
