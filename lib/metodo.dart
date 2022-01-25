// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Calcular {
  Future<String> realizarCalculo(String texto) async {
    int soma = 0;

    try {
      if (texto == "") {
        return "Digite um número!";
      } else {
        var numeroConvertido = int.parse(texto);
        var lista = List<int>.generate(numeroConvertido, (i) => i);
        if (numeroConvertido == 0) {
          return "Digite um número maior que 0!";
        } else {
          for (var element in lista) {
            if (element % 3 == 0 || element % 5 == 0) {
              soma += element;
            }
          }
        }
      }
    } on Exception catch (_) {
      return "Erro!";
    }
    return 'Resultado: ' + soma.toString();
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
