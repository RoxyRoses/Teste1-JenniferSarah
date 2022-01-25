import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Teste 1 - Jennifer Sarah'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controladorTxtNumero = TextEditingController();
  var resultado = "";

  String calcular() {
    var texto = controladorTxtNumero.text;
    var numeroConvertido =
        int.parse(controladorTxtNumero.text); // pega valor txt
    int soma = 0;
    var lista = List<int>.generate(numeroConvertido, (i) => i);

    try {
      if (texto == "") {
        return "Digite um numero!";
      }
      if (numeroConvertido <= 0) {
        return "Digite um numero maior que 0!";
      } else {
        for (var element in lista) {
          if (element % 3 == 0 || element % 5 == 0) {
            soma += element;
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Digite o numero: ',
            ),
            SizedBox(
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controladorTxtNumero,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                String retorno = await calcular();
                setState(() {
                  resultado = retorno;
                });
              },
              child: const Text('Calcular'),
            ),
            Text(resultado)
          ],
        ),
      ),
    );
  }
}
