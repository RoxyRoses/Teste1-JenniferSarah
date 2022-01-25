// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Calcular extends StatelessWidget {
  String texto;
  int numero = 0;
  int soma = 0;

  Calcular({required this.texto});

  @override
  Widget build(BuildContext context) {
    try {
      if (texto == "") {
        return Text('Digite um numero!');
      }
      var numeroConvertido = int.parse(texto); // pega valor txt
      if (numeroConvertido <= 0) {
        return Text('Digite um numero maior que 0!');
      } else {
        int soma = 0;
        var lista = new List<int>.generate(numeroConvertido, (i) => i);

        for (var element in lista) {
          if (element % 3 == 0 || element % 5 == 0) {
            soma += element;
            return Text('Soma dos valores: ' + soma.toString());
          }
        }
      }
    } on Exception catch (_) {
      print('erro');
    }
    return Text('Erro!');
  }
}
